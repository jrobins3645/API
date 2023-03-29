//
//  Header.swift
//  API
//
//  Created by Jeff on 3/27/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Image("Dashion")
            Image(systemName: "cart")
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .frame(width: 50.0, height: 50.0)
    }
}
