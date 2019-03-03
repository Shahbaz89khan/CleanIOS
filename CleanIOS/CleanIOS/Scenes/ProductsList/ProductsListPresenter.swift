//
//  ProductsListPresenter.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/19/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

class ProductsListPresenter {
    var viewController : ProductsListViewController?
    
    func fetchedProducts(response : ProductsListViewModel.ViewModel) {
        let viewModel = response    //we will make the model from response here
        viewController?.displayFetchedProdutcs(viewModel: viewModel)
        
    }

}
