//
//  QuoteView.swift
//  API
//
//  Created by Jeff on 3/27/23.
//

import SwiftUI

struct QuoteView: View {
    @StateObject var quoteModel = QuoteModel()
    
    
    var body: some View {
        VStack {
            if quoteModel.quotes.isEmpty {
                Text("Loading...")
            } else {
                VStack {
                    Text(quoteModel.quotes[0].q)
                }
                
            }
        }.onAppear{
            quoteModel.fetch()
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
