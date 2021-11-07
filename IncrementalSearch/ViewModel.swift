//
//  ViewModel.swift
//  IncrementalSearch
//
//  Created by cmStudent on 2021/11/07.
//

import Foundation

class ViewModel: ObservableObject {
    
    // MARK: - Property Wrappers
    @Published var text = ""
    
    
    // MARK: - Properties
    private let items = (0..<100).map { "\($0)" }
    var searchedItems: [String] {
        text.isEmpty ? items : items.filter { $0.contains(text) }
    }
}
