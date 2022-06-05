//
//  Constants.swift
//  FM
//
//  Created by Ogabek Bakhodirov on 05/06/22.
//

import Foundation
import UIKit


struct Key{
    
    struct colors{
        static let dataBackgroundColor = UIColor(red: (199/255.0), green: (199/255.0), blue: (199/255.0), alpha: 1.0)
    }
    
    struct Region{
        static let regions = ["Andijan", "Bukhara", "Fergana", "Jizzakh", "Xorazm", "Namangan", "Navoiy", "Qashqadaryo", "Samarqand", "Sirdaryo", "Surxondaryo", "Karakalpakistan", "Tashketn"]
    }
    
    struct City{
//        var cityName: String
//        
//        init(cityName: String) {
//            self.cityName = cityName
//        }
        
        static func selectedCity(cityname: String){
            if cityname == "Andijan"{
                let cities = ["Andijan", "Xonobod", "Jalaquduq", "Poytugʻ", "Qoʻrgʻontepa", "Qorasuv", "Asaka", "Marhamat", "Shahrixon", "Paxtaobod", "Xoʻjaobod"]
            }
        }
        
        
        struct Bukhara{
            static let cities = ["Bukhara", "Kogon", "Olot", "Galaosiyo", "Vobkent", "Gʻijduvon", "Qorakoʻl", "Qorovulbozor", "Romitan", "Gazli", "Shofirkon"]}
        
        struct Fergana{
            static let cities = ["Fergana", "Kokand", "Quvasoy", "Margilan", "Tinchlik", "Beshariq", "Quva", "Rishton", "Yaypan"]}
        
        struct Jizzakh{
            static let cities = ["Jizzakh", "Gʻallaorol", "Doʻstlik", "Dashtobod", "Gagarin", "Paxtakor"]}
        
        struct Xorazm{
            static let cities = ["Urgench", "Khiva", "Pitnak"]}
        
        struct Namangan{
            static let cities = ["Namangan", "Kosonsoy", "Haqqulobod", "Pop", "Toʻraqoʻrgʻon", "Uchqoʻrgʻon", "Chortoq", "Chust"]}
        
        struct Navoiy{
            static let cities = ["Navoiy", "Zarafshon", "Gʻozgʻon", "Qiziltepa", "Nurota", "Uchquduq", "Yangirabod"]}
        
        struct Qashqadaryo{
            static let cities = ["Qarshi", "Shahrisabz", "Gʻuzor", "Qamashi", "Beshkent", "Koson", "Kitob", "Muborak", "Yangi Nishon", "Tallimarjon", "Chiroqchi", "Yakkabogʻ"]}
        
        struct Samarqand{
            static let cities = ["Samarkand", "Kattakurgan", "Bulungʻur", "Jomboy", "Ishtixon", "Oqtosh", "Payariq", "Chelak", "Juma", "Nurobod", "Urgut"]}
        
        struct Sirdaryo{
            static let cities = ["Guliston", "Shirin", "Yangiyer", "Sirdaryo", "Baxt"]}
        
        struct Surxondaryo{
            static let cities = ["Termez", "Boysun", "Denov", "Jarqoʻrgʻon", "Qumqoʻrgʻon", "Shargʻun", "Sherobod", "Shoʻrchi"]}
        
        struct Tashketn{
            static let cities = ["Nurafshon", "Olmaliq", "Angren", "Bekabad", "Ohangaron", "Chirchiq", "Yangiyoʻl", "Oqqoʻrgʻon", "Gʻazalkent", "Boʻka", "Parkent", "Piskent", "Chinoz", "Keles", "Doʻstobod", "Yangiobod"]}
        
        struct Karakalpakistan{
            static let cities = ["Nukus", "Mangʻit", "Beruniy", "Xalqobod", "Qoʻngʻirot", "Moʻynoq", "Taxiatosh", "Toʻrtkoʻl", "Xoʻjayli", "Chimboy", "Shumanay", "Boʻston"]}
    }
    
    struct Gender{
        static let gender = ["Mужчина", "Женщина"]
    }
}
