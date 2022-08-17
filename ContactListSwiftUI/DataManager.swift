//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Игорь Богданов on 16.08.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init(){}
    
    let names = ["John","Erick","Victoria","Eva","Andrew"]
    let surnames = ["Smith","Johnson","Muller","Jackson","Bergsteiner"]
    let phoneNumbers = ["792111111111","79212222222","79213333333","79214444444","79215555555"]
    let emailAdresses = ["111@gmail.com","222@gmail.com","333@gmail.com","444@gmail.com","555@gmail.com"]
}
