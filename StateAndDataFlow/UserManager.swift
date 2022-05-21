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
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var isRegistered = false
    var name = ""
}
