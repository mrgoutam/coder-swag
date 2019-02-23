//
//  ProdcuctsVC.swift
//  coder-swag
//
//  Created by Xtremsoft on 23/02/19.
//  Copyright © 2019 Xtremsoft. All rights reserved.
//

import UIKit

class ProdcuctsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    //creating a empty array with type products
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
        
        //
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        
        return ProductCell()
    }

}
