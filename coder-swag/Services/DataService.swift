//
//  DataService.swift
//  coder-swag
//
//  Created by Xtremsoft on 21/02/19.
//  Copyright © 2019 Xtremsoft. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    private let hats = [
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hat01.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hat02.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hat03.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hat04.png")
    ]
    private let hoodies = [
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hoodie01.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hoodie01.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hoodie01.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "hoodie01.png")
    ]
    
    private let shirts = [
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "shirt01.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "shirt02.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "shirt03.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "shirt04.png"),
        Product(title: "Deveslopes Logo Graphic Beenie", price: "Rs.250", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories()->[Category]{
        return categories
    }
    
    func  getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
