//
//  ViewModel.swift
//  IncrementalSearch
//
//  Created by cmStudent on 2021/11/07.
//

import Foundation

class ViewModel: ObservableObject {
    
    // MARK: - Property Wrappers
    @Published var text: String = ""
    @Published var searchedItems: [String] = []
    
    
    // MARK: - Properties
    private let items = (0..<1000).map { "\($0)" }
    
    
    // MARK: - Methods
    func filter(by text: String) {
        searchedItems = text.isEmpty ? items : items.filter { $0.contains(text) }
    }
    
}
