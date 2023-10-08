//
//  ContentView.swift
//  ChatApp
//
//  Created by Ahmet Özkan on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello you", "How are you doing?", "I have been building SwiftUI applications"]
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(messageArray, id: \.self) { text in
                    MessageBubble(message: Message(id: "121", text: text, received: false, timestamp: Date()))
                    
                }
            }
            .padding(.top, 10)
            .background()
            .cornerRadius(30, corners: [.topLeft, .topRight])
                
        }
        .background(Color("Orange"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
