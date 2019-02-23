//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by Xtremsoft on 20/02/19.
//  Copyright © 2019 Xtremsoft. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
    

}
