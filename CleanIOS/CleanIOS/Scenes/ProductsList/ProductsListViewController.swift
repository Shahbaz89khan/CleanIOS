//
//  ProductsListViewController.swift
//  CleanIOS
//
//  Created by Shahbaz Khan on 2/19/19.
//  Copyright © 2019 Shahbaz Khan. All rights reserved.
//

import UIKit

protocol productsListProtocol: class {
    func displayFetchedProdutcs(viewModel : ProductsListViewModel.ViewModel)
}

class ProductsListViewController: UIViewController,productsListProtocol {
    
    var productListInteractor : ProductsListInteractor = ProductsListInteractor()
    var productListRouter : ProductsListRouter = ProductsListRouter()
   private  var  viewModel : ProductsListViewModel.ViewModel?
    @IBOutlet private var tableView : UITableView?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
        fetchProducts()
    }
    
    func setup()  {
        
        let viewController = self
        let presenter = ProductsListPresenter()
        presenter.viewController = viewController
        productListInteractor.presenter = presenter
        productListRouter.sourceController = viewController
        
        
    }
    
    func fetchProducts() {
        productListInteractor.getProductDetails(productID: "1")

    }
    
    func displayFetchedProdutcs(viewModel: ProductsListViewModel.ViewModel) {
        self.viewModel = viewModel
        loadUI()
    }
    
    func loadUI() {
        self.tableView?.reloadData()
    }

}

extension ProductsListViewController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.products.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewTableViewCell
        guard let model = viewModel?.products[indexPath.row] else { return cell}
        cell.bind(model: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let model = viewModel?.products[indexPath.row] else {
            return
        }
        self.productListRouter.showProdutDetail(model: model)
    }
    
}

