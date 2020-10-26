//
//  User.swift
//  NetworkingWithCombineAndMVVM
//
//  Created by Umer Khan on 29/09/2020.
//

import Foundation

struct User: Decodable, Hashable {
    
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
