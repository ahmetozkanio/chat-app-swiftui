//
//  ContentView.swift
//  ChatApp
//
//  Created by Ahmet Özkan on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()

    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    ForEach(messagesManager.messages, id: \.id) { message in
                        MessageBubble(message: message)
                        
                    }
                }
                .padding(.top, 10)
                .background()
                .cornerRadius(30, corners: [.topLeft, .topRight])
                    
            }
            .background(Color("Orange"))
            
            MessageField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
