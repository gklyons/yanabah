//
//  Tea.swift
//  Yanabah
//
//  Created by Garrett Lyons on 10/19/17.
//  Copyright © 2017 Garrett Lyons. All rights reserved.
//

import UIKit

class Tea {
    
    var uid: String?
    var name: String?
    var images: [UIImage]?
    var price: Double?
    var description: String?
    var detail: String?
    
    init(uid: String, name: String, images: [UIImage], price: Double, description: String, detail: String) {
        self.uid = uid
        self.name = name
        self.images = images
        self.price = price
        self.description = description
        self.detail = detail
    }
    
    class func fetchTea() -> [Tea]{
        
        var teas = [Tea]()
        
        // MARK - Traditional Navajo Tea (Single Box)
        var tea1Images = [UIImage]()
        for i in 1...8 {
            tea1Images.append(UIImage(named: "t\(i)")!)
        }
        let tea1 = Tea(uid: "2tnvb20", name: "Traditional Navajo Tea", images: tea1Images, price: 6, description: "100% Traditional Navajo Tea, the same way its enjoyed on the reservation. Taste the best kept secret of Southwest! This is a caffeine free herbal tea. 20 individual tea bags in each box", detail: "I hope you find our Navajo Tea comforting and good tasting. As a young girl growing up on the Navajo Reservation, I often helped my grandmother, Yanabah, gather and dry Greenthread, a plant better known as Navajo Tea. Yanabah would have me make a pot of Navajo Tea on her wood burning stove any time visitors stopped by. I can still smell the cedar smoke and feel the comfort of Yanabah’s home when I drink a cup of Navajo Tea. It makes me feel connected — connected to my family, to my Grandmother, to my culture. Yanabah was the inspiration for our Navajo Tea company which now bares her name. Our box of Traditional Navajo Tea features 20 individual tea bags. We use only unbleached bags and our box is made with recycled paper. Caution – People have been known to drink Navajo Tea in one hand and book a trip to the Southwest with the other hand. Remember, Yanabah Traditional Navajo Tea is a caffeine free herbal tea. -Yellow Bird, Owner, Yanabah Tea")
        teas.append(tea1)
        
        // MARK - Mint Navajo Tea (Single Box)
        var tea2Images = [UIImage]()
        for i in 1...8 {
            tea2Images.append(UIImage(named: "m\(i)")!)
        }
        let tea2 = Tea(uid: "2tnmb20", name: "Mint & Navajo Tea", images: tea2Images, price: 6, description: "We mixed our Traditional Navajo Tea with the best mint we could find. Enjoy this updated take on a Navajo classic. Caffeine-free. 20 individual bags in each box", detail: "I searched far and wide to find high-quality mint that would measure up to our Navajo Tea. I found it in Dalton, Ohio at Mint Brook Meadow farm. From there I focused on finding the right blend. I chose a combination of spearmint & peppermint in just the right amount to enhance, but not overpower, the natural taste of Navajo Tea. The result is a refreshing new spin on the traditional drink I grew-up with. Yanabah would love it! Add a dash of agave nectar for a sweet floral accent. -Yellow Bird, Owner, Yanabah Tea")
        teas.append(tea2)
        
        // MARK - Green Navajo Tea (Single Box)
        var tea3Images = [UIImage]()
        for i in 1...8 {
            tea3Images.append(UIImage(named: "g\(i)")!)
        }
        let tea3 = Tea(uid: "2tngb20", name: "Green & Navajo Tea", images: tea3Images, price: 6, description: "East meets West with our Navajo Tea & Green Tea mixture. Everything healthy about Green Tea with the mild flavor of Navajo Tea! 20 individual tea bag in each box.", detail: "China is home to some of the world’s finest tea. I have mixed our Traditional Navajo Tea with a wonderful fire-roasted green tea originating from small co-op farms in the mountainous Hunan province. You already know the wonderful health benefits of green tea and now you can enjoy it with the mild, pleasant flavor of Navajo Tea. My grandmother, Yanabah, would be amazed to see the combination of her traditional drink with that of a culture located thousands of miles away! I am proud to present this 50/50 blend of Navajo Tea & Green Tea. The reservation just became international! -Yellow Bird, Owner, Yanabah Tea")
        teas.append(tea3)
        
        return teas
    }
}















