//
//  TitleRow.swift
//  ChatApp
//
//  Created by Ahmet Özkan on 8.10.2023.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://avatars.githubusercontent.com/u/65506828?s=400&u=ffc481d60828d5c04a6659a169cb68b70d259def&v=4")
    var name = "Ahmet Özkan"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Orange"))
    }
}
