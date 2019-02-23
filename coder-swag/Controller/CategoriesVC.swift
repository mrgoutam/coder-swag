//
//  ViewController.swift
//  coder-swag
//
//  Created by Xtremsoft on 20/02/19.
//  Copyright © 2019 Xtremsoft. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //counting no of rows
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
           return CategoryCell()
        }
    }
    
    //row selection listener
    //type didselec-- automatically name will come
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        
        //we are sending the category in the sender instead of any object
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProdcuctsVC{
            setBarBtnItem()
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }
    
    func setBarBtnItem() {
        let barBtn = UIBarButtonItem()
        barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
    }

}

