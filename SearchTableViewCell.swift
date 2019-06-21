//
//  SearchTableViewCell.swift
//  VSMS
//
//  Created by usah on 6/11/19.
//  Copyright © 2019 121. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    @IBOutlet weak var Search: UISearchBar!
    
    @IBOutlet weak var btnbuy: UIButton!
    
    @IBOutlet weak var btnsell: UIButton!
    @IBOutlet weak var btnrent: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let textFieldInsideUISearchBar = Search.value(forKey: "searchField") as? UITextField
        let italicfont = UIFont.italicSystemFont(ofSize: 20)
        textFieldInsideUISearchBar?.backgroundColor = UIColor.white
       // UIFont.init(name: "AmericanTypewrite-italic", size: 20)
      //  textFieldInsideUISearchBar?.textColor = UIColor.red
       // textFieldInsideUISearchBar?.font = textFieldInsideUISearchBar?.font?.withSize(20)
        let textFieldInsideUISearchBarLabel = textFieldInsideUISearchBar!.value(forKey: "placeholderLabel") as? UILabel
        textFieldInsideUISearchBarLabel?.textColor = UIColor.lightGray
        textFieldInsideUISearchBarLabel?.font = italicfont
       // textFieldInsideUISearchBarLabel?.font = UIFont(name: "AmericanTypewrite-italic", size: 20)
        
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
