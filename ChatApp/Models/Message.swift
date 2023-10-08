//
//  Message.swift
//  ChatApp
//
//  Created by Ahmet Özkan on 8.10.2023.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
