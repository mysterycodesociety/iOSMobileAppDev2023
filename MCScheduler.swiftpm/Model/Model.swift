//
//  Model.swift
//  MCScheduler
//
//  Created by Student on 10/21/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
