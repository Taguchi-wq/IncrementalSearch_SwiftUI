//
//  ContentView.swift
//  IncrementalSearch
//
//  Created by cmStudent on 2021/11/07.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property Wrappers
    @ObservedObject private var viewModel = ViewModel()
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            TextField("数字を入力して", text: $viewModel.text)
                .padding()
            List {
                ForEach(viewModel.searchedItems, id: \.self) { item in
                    Text(item)
                } // ForEach
            } // List
            .listStyle(PlainListStyle())
        } // VStack
        .onReceive(viewModel.$text) { text in
            viewModel.filter(by: text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
