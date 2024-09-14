//
//  User.swift
//  Todo
//
//  Created by Jannik Scheider on 05.04.24.
//

import Foundation

struct User: Codable{
    let id:String
    let name: String
    let email: String
    let joined: TimeInterval
}
