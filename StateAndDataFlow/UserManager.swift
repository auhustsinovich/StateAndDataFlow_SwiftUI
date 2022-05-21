//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Daniil Auhustsinovich on 20.05.2022.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var user = User()
    
    init() {}
}

struct User {
    var isRegistered = false
    var name = ""
}
