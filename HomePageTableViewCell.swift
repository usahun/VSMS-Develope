//
//  HomePageTableViewCell.swift
//  VSMS
//
//  Created by Vuthy Tep on 5/28/19.
//  Copyright © 2019 121. All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource{

    @IBOutlet weak var ImagePage: UICollectionView!
    override func awakeFromNib() {
        
        
        
        super.awakeFromNib()
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 10
        // layout.itemSize = CGSize(width: 70, height: 80)
        layout.scrollDirection = .horizontal
        ImagePage.collectionViewLayout = layout
        
        ImagePage?.dataSource = self
        ImagePage?.delegate = self
        ImagePage.clipsToBounds = true
        ImagePage.showsHorizontalScrollIndicator = false
        ImagePage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        ImagePage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        
        
        let cellphoto = UINib(nibName: "PhotoSilderCollectionViewCell", bundle: nil)
        ImagePage?.register(cellphoto, forCellWithReuseIdentifier: "PhotoSilderCollectionViewCell")
        
     
        // Initialization code
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoSilderCollectionViewCell", for: indexPath) as! PhotoSilderCollectionViewCell
        cell.PhotoHome.image = UIImage(named: "121logo")
        return cell
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
