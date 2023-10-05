//
//  LoginView.swift
//  DevConnect
//
//  Created by Hina Khan on 27/08/2023.
//


import SwiftUI
struct LoginView: View {

    @State var username:String = ""
    @State var password:String = ""
    var body: some View {
            VStack(spacing: 10) {
                Image("girlcoding").resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Login").bold()
                    .font(.title)
                Text("Why work hard if you can work smart")  .font(.subheadline)
                TextField("Username",text: $username).padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                SecureField("Password",text: $password).padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                
                Button(action: {}, label: {
                    HStack {
                        Spacer()
                        NavigationLink(destination: DashboardView()) {
                            Text("Login")
                            .foregroundColor(.white)}          .navigationBarHidden(true)

                        Spacer()
                    }.padding()
                        .background(Color.indigo)
                        .cornerRadius(5.0)
                })
                Button(action:{}, label: {
                    Text("Forgot Password?")
                })
                Spacer()
            }.padding()
    }
    func buttonAction(){
            print("login button tapped")
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


