//
//  NewHomepageViewController.swift
//  VSMS
//
//  Created by Vuthy Tep on 5/28/19.
//  Copyright © 2019 121. All rights reserved.
//

import UIKit
import CoreLocation

class NewHomepageViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //Properties
    private var HomeTableView : UITableView!
    
    //Methods and Handler
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBarItem()
        tableViewConfig()
        self.view.backgroundColor = UIColor.white
        
    }
    
    private func tableViewConfig()
    {
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        HomeTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight))
        let sellXib = UINib(nibName: "HomePageTableViewCell", bundle: nil)
        HomeTableView.register(sellXib, forCellReuseIdentifier: "HomePageTableViewCell")
        HomeTableView.dataSource = self
        HomeTableView.delegate = self
        HomeTableView.backgroundColor = UIColor.red
        
        self.view.addSubview(HomeTableView)
        
    }
    
    private func setupNavigationBarItem()
    {
        let logo = UIImage(named: "HamburgarIcon")
        let menu = UIButton(type: .system)
        menu.setImage(logo, for: .normal)
       // navigationItem.leftBarButtonItem = UIBarButtonItem(customView: menu)
        menu.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        menu.tintColor = UIColor.lightGray
        
        //logo
    let munebutton = UIBarButtonItem(customView: menu)
    let logoImage = UIImage.init(named: "121logo")
    let logoImageView = UIImageView.init(image: logoImage)
    logoImageView.contentMode = .scaleAspectFit
       logoImageView.frame = CGRect(x:0, y: 0, width: 0, height: 0)
        logoImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
    //   (-40, 0, 150, 25)
      logoImageView.contentMode = .scaleAspectFit
     let imageItem = UIBarButtonItem.init(customView: logoImageView)
     let negativeSpacer = UIBarButtonItem.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
      negativeSpacer.width = -25
       navigationItem.leftBarButtonItems = [munebutton, imageItem]
       
        let button = UIButton(type: .custom)
        //set image for button
        button.setImage(UIImage(named: "flatenglish"), for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive =  true
        
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.navigationItem.rightBarButtonItem = barButton
    }

  
    //Table View Handler
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageTableViewCell", for: indexPath) as! HomePageTableViewCell
      
        return cell
    }
    
   
}


//extension NewViewController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let size = sliderCollectionView.frame.size
//        return CGSize(width: size.width, height: size.height)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0.0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0.0
//    }
//
//}

