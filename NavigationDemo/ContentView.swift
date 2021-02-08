//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Omar Bassyouni on 08/02/2021.
//

import Combine
import SwiftUI


class ContentViewViewModel: ObservableObject {
    @Published var button1Name = "button 1"
    @Published var button2Name = "button 2"
}

protocol ContentViewWantsGoSomewhere {
    func button1GoSomeWhere()
    func button2GoSomeWhere()
}

struct ContentView: View {
     // Presentation Layer
    @ObservedObject var viewModel: ContentViewViewModel
    
    // Naviga
    var navigationDelegate: ContentViewWantsGoSomewhere
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        Button(viewModel.button1Name) {
            navigationDelegate.button1GoSomeWhere()
        }
        
        Button(viewModel.button2Name) {
            navigationDelegate.button2GoSomeWhere()
        }
    }
}

struct View1: View {
    var body: some View {
        Text("View 1")
            .padding()
    }
}

struct View2: View {
    var body: some View {
        Text("View 2")
            .padding()
    }
}
