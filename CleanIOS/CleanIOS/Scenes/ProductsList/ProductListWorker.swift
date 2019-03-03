//
//  ViewControllerWorker.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/19/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

class ProductListWorker {
    func fetchFromServer(productID : String) -> ProductsListViewModel.ViewModel {
        
        return dummyData()
        
    }
    
    func dummyData() -> ProductsListViewModel.ViewModel {
        
        let viewModel = ProductsListViewModel.ViewModel()
        let dummyProductObject = ProductsListViewModel.ProductViewModel()
        dummyProductObject.productName = "Dummy Name"
        dummyProductObject.productId = "1"
        viewModel.products.append(dummyProductObject)
        
        let dummyProductObject1 = ProductsListViewModel.ProductViewModel()
        dummyProductObject1.productName = "Dummy Name 2"
        dummyProductObject1.productId = "2"
        viewModel.products.append(dummyProductObject1)
        
        return viewModel
        
        
    }

}
