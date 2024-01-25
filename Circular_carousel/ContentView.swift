//
//  ContentView.swift
//  Circular_carousel
//
//  Created by Omid Shojaeian Zanjani on 22/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Home()
                .navigationTitle("Circular Carosel")
        }
    }
}

#Preview {
    ContentView()
}
