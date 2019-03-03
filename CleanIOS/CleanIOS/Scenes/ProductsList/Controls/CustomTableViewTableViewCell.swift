//
//  CustomTableViewTableViewCell.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/20/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

class CustomTableViewTableViewCell: UITableViewCell {
   @IBOutlet var customLabel : UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func bind(model : ProductsListViewModel.ProductViewModel)  {
        customLabel?.text = model.productName
    }

}
