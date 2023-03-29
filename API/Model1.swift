//
//  Model1.swift
//  API
//
//  Created by Jeff on 3/27/23.
//

import Foundation

// MARK: - Quote
struct Quote: Hashable, Codable {
    let q: String
    let a: String
}

typealias Quotes = [Quote]




class QuoteModel: ObservableObject {
    
    @Published var quotes: [Quote] = []
    
    func fetch() {
        guard let url = URL(string: "https://zenquotes.io/api/quotes/") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert to JSON
            do {
                let quotes = try JSONDecoder().decode([Quote].self, from: data)
                DispatchQueue.main.async {
                    self?.quotes = quotes
                }
            }
            catch {
                print(error)
            }
        }
        print(QuoteModel())
        task.resume()
    }
}
