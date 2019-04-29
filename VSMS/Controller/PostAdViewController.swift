//
//  PostAdViewController.swift
//  VSMS
//
//  Created by Vuthy Tep on 4/29/19.
//  Copyright © 2019 121. All rights reserved.
//

import UIKit

struct PostImageModel1 {
    let image:  UIImage
}

class PostAdViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    
    @IBOutlet private weak var collectionView: UICollectionView?
    
    var postImages: Array<PostImageModel1> = []
    
    let picker = UIImagePickerController()
    
    var tempImage: UIImage?
    
    var currentIndex: Int = 0
    
    var tabledata: [String] = ["Row 1", "Row 2", "Row 3","Row 4","Row 5","Row 6","Row 7","Row 8","Row 9","Row 10","Row 11","Row 12","Row 13","Row 14"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self as? UITableViewDelegate
        tableview.dataSource = self
        
        
        
        //collectionview
        setupView()
        
        for _ in 0...7 {
            self.postImages.append(PostImageModel1(image: UIImage(named: "icons8-plus-math-50 (5)")!))
        }
    }
    //fucntion
    
    fileprivate func setupView() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.scrollDirection = .horizontal
        collectionView?.collectionViewLayout = layout
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
        collectionView?.clipsToBounds = true
        collectionView?.showsHorizontalScrollIndicator = false
        
        let cellNib = UINib(nibName: "PhotoListCollectionViewCell", bundle: nil)
        collectionView?.register(cellNib, forCellWithReuseIdentifier: "photoCell")
        
        picker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tabledata.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = tabledata[indexPath.row]
        return cell!
    }
}


extension PostAdViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell",
                                                      for: indexPath) as? PhotoListCollectionViewCell
        cell!.postImageView?.image = postImages[indexPath.row].image
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        
        self.currentIndex = indexPath.row
        
        let alertController = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        let cameraAction = UIAlertAction(title: "Open Camera", style: .default) { (alert) in
            self.picker.sourceType = .camera
            self.present(self.picker, animated: true, completion: nil)
        }
        
        let photoAlbumAction = UIAlertAction(title: "Album", style: .default) { (alert) in
            self.picker.sourceType = .photoLibrary
            self.present(self.picker, animated: true, completion: nil)
        }
        
        alertController.addAction(cameraAction)
        alertController.addAction(photoAlbumAction)
        
        _ = UIStoryboard.init(name: "Main", bundle: nil)
        //= storyBoard.instantiateViewController(withIdentifier: "testVC") as? TestViewController
        //let navigationController = UINavigationController(rootViewController: VC!)
        //present(VC!    , animated: true, completion: nil)
        
        
        present(alertController, animated: true, completion: nil)
    }
    
}
