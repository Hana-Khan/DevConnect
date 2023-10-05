//
//  HomeView.swift
//  DevConnect
//
//  Created by Hina Khan on 27/08/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Welcome onboard")
                .font(.largeTitle)
                .bold()
                .padding(.vertical)
            
            Image("engineering_team")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .padding()
            DetailsView()
        }
            .navigationBarTitle("Home", displayMode: .inline)
        
    }
}

struct DetailsView: View {
    var body: some View {
        VStack {
           NavigationView {
                List {
                    ForEach(0..<5) { index in
                        NavigationLink(destination: DetailView(itemNumber: index)) {
                            HStack {
                                Image(systemName: "person.crop.circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.blue)
                                    .padding(.trailing, 10)
                                Text("Expert \(index + 1)")
                            }
                        }
                    }
                }
                .navigationBarTitle("Connect to Experts", displayMode: .inline)
            }


        }
        .padding(.top, 30)
    }
}
struct DetailView: View {
    var itemNumber: Int
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)
            Text("Detail of Expert \(itemNumber + 1)")
                .font(.title)
                .padding()
        }
        .navigationBarTitle("Detail", displayMode: .inline)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


