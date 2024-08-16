//
//  Item.swift
//  Asm1
//
//  Created by Jo W on 24/11/2023.
//

import Foundation
import Combine

struct Disease: Identifiable, Decodable{
    
let id: String
let treatment: [Int]
let detail: String
let image: String?

private enum CodingKeys: String, CodingKey {
case id = "disease"
case treatment
case detail
case image
}
}

struct Treatment: Identifiable, Decodable{
    
let id: String
let name: String
let steps: [String]?
let ingredients: [String]?
let detail: String
let image: String?

private enum CodingKeys: String, CodingKey {
case id = "treatment"
case name
case steps
case ingredients
case detail
case image
}
}

func handleClientError(_ error: Error) {
        // Handle the client-side error here
        print("Client Error: \(error)")
}
    
func handleServerError(_ response: URLResponse?) {
    // Handle the server-side error here
    if let httpResponse = response as? HTTPURLResponse {
        print("Server Error: Status Code \(httpResponse.statusCode)")
    }
}
