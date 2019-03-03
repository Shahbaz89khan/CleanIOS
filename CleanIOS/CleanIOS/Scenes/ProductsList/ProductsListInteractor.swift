//
//  ViewControllerInteractor.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/19/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

class ProductsListInteractor {
    
    var worker : ProductListWorker = ProductListWorker()
    var presenter : ProductsListPresenter = ProductsListPresenter()
    
    func getProductDetails(productID : String)  {
        let response = self.worker.fetchFromServer(productID: productID)
        presenter.fetchedProducts(response: response)
    }
}
