// Código para o cache de imagens obtido em: https://github.com/SchwiftyUI/NewsApiApp/

//
//  UrlImageView.swift
//  NewsApp
//
//  Created by SchwiftyUI on 12/29/19.
//  Copyright © 2019 SchwiftyUI. All rights reserved.
//
import SwiftUI

struct UrlImageView: View {
    @ObservedObject var urlImageModel: UrlImageModel
    
    init(urlString: String?) {
        urlImageModel = UrlImageModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? UrlImageView.defaultImage!)
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
    }
    
    static var defaultImage = UIImage(named: "Blank")
}

struct UrlImageView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageView(urlString: nil)
    }
}
