//
//  ContentView.swift
//  Shared
//
//  Created by vignesh on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputText: String = ""
    var body: some View {
       NavigationView {
        VStack{
        Text("Hello, world!")
            . shadow(radius: 0)
            .padding()
            .foregroundColor(.blue)
            
            TextField("Type Something..", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                                   .padding()
           
            NavigationLink(destination: DetailsView(inputValue: $inputText)) {
                               Text("Go to Details")
                           }
    }
    }
       .navigationTitle("Home")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

struct DetailsView: View {
    @Binding var inputValue:String
    @State var updatedText:String = "Hello"
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Text(inputValue)
            Button("Go back and send value"){
               inputValue = updatedText
                presentationMode.wrappedValue.dismiss()
            }
            
        }
        
    }
}
