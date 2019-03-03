//
//  ProductsListViewModel.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/19/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

enum ProductsListViewModel {
    
    class Request  {
        
    }
    
    class Response  {
        
    }
    
    class ViewModel  {
        var products : [ProductViewModel] = []
    }
    
    class ProductViewModel  {
        var productName : String = ""
        var productId : String = ""
    }

}
