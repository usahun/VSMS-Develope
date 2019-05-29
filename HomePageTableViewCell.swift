//
//  HomePageTableViewCell.swift
//  VSMS
//
//  Created by Vuthy Tep on 5/28/19.
//  Copyright © 2019 121. All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell {

    @IBOutlet weak var ImagePage: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 70, height: 80)
        layout.scrollDirection = .horizontal
        ImagePage.collectionViewLayout = layout
        
        //collectionView?.dataSource = self
        //collectionView?.delegate = self
        ImagePage.clipsToBounds = true
        ImagePage.showsHorizontalScrollIndicator = false
        
        let cellphoto = UINib(nibName: "PhotoSilderCollectionViewCell", bundle: nil)
        ImagePage?.register(cellphoto, forCellWithReuseIdentifier: "PhotoSilderCollectionViewCell")
        
     
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
