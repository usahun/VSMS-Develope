//
//  HomePageTableViewCell.swift
//  VSMS
//
//  Created by Vuthy Tep on 5/28/19.
//  Copyright © 2019 121. All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

    @IBOutlet weak var ImagePage: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.red
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 70, height: 80)
        layout.scrollDirection = .horizontal
        ImagePage.collectionViewLayout = layout
        
        ImagePage?.dataSource = self
        ImagePage?.delegate = self
        ImagePage.clipsToBounds = true
        ImagePage.showsHorizontalScrollIndicator = false
        
        let cellphoto = UINib(nibName: "PhotoSliderCollectionViewCell", bundle: nil)
        ImagePage?.register(cellphoto, forCellWithReuseIdentifier: "PhotoSliding")
//        
     
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoSliding", for: indexPath) as! PhotoSilderCollectionViewCell
        cell.PhotoHome.image = UIImage(named: "121logo")
        return cell
        
    }
}
