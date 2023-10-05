//
//  ContentView.swift
//  DevConnect
//
//  Created by Hina Khan on 27/08/2023.
//


import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn = false // Set this to true after successful login

    var body: some View {
            NavigationView  {
                VStack {
                    Text("Instant Developer")
                        .fontWeight(.medium)
                        .font(.system(size: 40))
                        .foregroundColor(.indigo)
                    Text("Get help from experts in 15 minutes")
                    Image("girlcoding").resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Need help with coding problems? Register!").padding(.bottom, 30)
                    
                        Button {
                        } label: {
                            NavigationLink(destination: SignUpView()) {Text("Sign Up")
                        }}
                        .frame(width: 200)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.indigo)
                        .cornerRadius(10)
                    
                    Button(action:{}, label: {
                        NavigationLink(destination: LoginView()) {
                            Text("Already have an account? Login")}
                    }).padding(.top,10)
                                   Spacer()
                }.padding(.top, 30)
            }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}


