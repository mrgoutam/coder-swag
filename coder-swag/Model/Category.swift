//
//  Category.swift
//  coder-swag
//
//  Created by Xtremsoft on 21/02/19.
//  Copyright © 2019 Xtremsoft. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
