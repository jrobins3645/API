//
//  ContentView.swift
//  API
//
//  Created by Jeff on 3/27/23.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var quoteModel = QuoteModel()
    
    var body: some View {
        NavigationView {
            VStack {
                QuoteView()
                Link(destination: URL(string: "https://www.simpleswiftguide.com")!) {
                    Image(systemName: "paperplane")
                        .font(.largeTitle)
                }
                Link(destination: URL(string: "https://www.simpleswiftguide.com")!) {
                    Text("this is text")
                }
            }
           
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
