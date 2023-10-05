//
//  DashboardView.swift
//  DevConnect
//
//  Created by Hina Khan on 27/08/2023.
//

import SwiftUI

struct DashboardView: View {
    @State private var selectedTab = "home"

    var body: some View {
        TabView(selection: $selectedTab) {
                    NavigationView {
                        HomeView()
    
                    }
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }

                    NavigationView {
                        SettingsView()
                                                    
                    }
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }

                    NavigationView {
                        InboxView()                            .navigationBarTitle("Inbox", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Inbox")
                    }
                    .tag("inbox")
                }
    }
}



    struct DashboardView_Previews: PreviewProvider {
        static var previews: some View {
            DashboardView()
        }
    }



