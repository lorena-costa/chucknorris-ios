//
//  DetailView.swift
//  Chuck Norris
//
//  Created by Lorena Costa on 10/01/21.
//

import Foundation
import SwiftUI

struct DetailView: View {
    let category: String
    @StateObject private var model = DetailViewModel()
    
    var body: some View {
        VStack {
            UrlImageView(urlString: self.model.detail?.icon_url)
                .padding()
            Text(self.model.detail?.value ?? "")
                .multilineTextAlignment(.center)
            Spacer()
            Link(destination: URL(string: "https://api.chucknorris.io/jokes/random?category=" + self.category)!) {
                Text("Categoria " + self.category.titleCase)
                    .font(.body)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
            .background(Color.accentColor)
            .padding()
        }
        .padding()
        .onAppear(perform: {
            model.fetchDetail(category: self.category)
        }).navigationBarTitle(self.category.titleCase,
                              displayMode: .inline)
    }
}
