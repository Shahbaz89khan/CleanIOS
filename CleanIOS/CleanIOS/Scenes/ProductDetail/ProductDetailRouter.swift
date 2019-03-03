//
//  ProductDetailRouter.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/21/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

class ProductDetailRouter {
    var viewController : ProductDetailViewController?
    func goBackToProductList() {
        viewController?.dismiss(animated: true, completion: nil)
    }

}
