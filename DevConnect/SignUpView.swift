//
//  SignUpView.swift
//  DevConnect
//
//  Created by Hina Khan on 27/08/2023.
//

import SwiftUI

struct SignUpView: View {
    @State var username:String = ""
    @State var password:String = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Image("join").resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Sign up").bold()
                    .font(.title)
                TextField("Username",text: $username).padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                SecureField("Password",text: $password).padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                SecureField("Confirm Password",text: $password).padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)

                Button(action: {}, label: {
                    HStack {
                        Spacer()
                        NavigationLink(destination: DashboardView()) {
                            Text("Sign up")
                            .foregroundColor(.white)}
                        Spacer()
                    }.padding()
                        .background(Color.indigo)
                        .cornerRadius(5.0)
                })
                
                Spacer()
            }.padding()}
    }
    func buttonAction(){
            print("sign up button tapped")
        }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
