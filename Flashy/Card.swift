//
//  Card.swift
//  Flashy
//
//  Created by Zi on 28/08/2025.
//

import Foundation

struct Card: Codable{
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th doctor in doctor who?", answer: "Zia Ahmed")
}
