//
//  ProductsListRouter.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/20/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

class ProductsListRouter {
    
    var sourceController : ProductsListViewController?
    var destinationController : ProductDetailViewController?
    
    func showProdutDetail(model : ProductsListViewModel.ProductViewModel)  {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        destinationController = storyboard.instantiateViewController(withIdentifier: "ProductDetailViewController") as? ProductDetailViewController
        destinationController?.viewModel = model
        sourceController?.show((destinationController ?? nil)!, sender: nil)
    }

}
