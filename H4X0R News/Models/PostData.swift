//
//  PostData.swift
//  H4X0R News
//
//  Created by Martin Novak on 03.04.2023..
//

import Foundation
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable,Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
