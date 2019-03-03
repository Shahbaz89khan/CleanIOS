//
//  ProductDetailViewController.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/20/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {
    var viewModel = ProductsListViewModel.ProductViewModel()
    var productDetailRouter : ProductDetailRouter = ProductDetailRouter()
    @IBOutlet  var customLabel : UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        loadUI()
        // Do any additional setup after loading the view.
    }
    func setup()  {
        let viewController = self
        productDetailRouter.viewController = viewController
    }
    
    func loadUI() {
        customLabel?.text = viewModel.productName
    }

    @IBAction func backButtonAction() {
        productDetailRouter.goBackToProductList()
    }

}
