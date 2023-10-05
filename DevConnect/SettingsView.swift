//
//  SettingsView.swift
//  DevConnect
//
//  Created by Hina Khan on 27/08/2023.
//

import SwiftUI


struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("General")) {
                    NavigationLink(destination: ProfileView()) {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                    NavigationLink(destination: NotificationView()) {
                        Label("Notifications", systemImage: "bell")
                    }
                }

                Section(header: Text("Privacy")) {
                    NavigationLink(destination: PrivacySettingsView()) {
                        Label("Privacy Settings", systemImage: "lock")
                    }
                }

                Section(header: Text("About")) {
                    NavigationLink(destination: AboutView()) {
                        Label("About Us", systemImage: "info.circle")
                    }
                    NavigationLink(destination: HelpView()) {
                        Label("Help & Support", systemImage: "questionmark.circle")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile Settings")
            .navigationBarTitle("Profile")
    }
}

struct NotificationView: View {
    var body: some View {
        Text("Notification Settings")
            .navigationBarTitle("Notifications")
    }
}

struct PrivacySettingsView: View {
    var body: some View {
        Text("Privacy Settings")
            .navigationBarTitle("Privacy Settings")
    }
}

struct AboutView: View {
    var body: some View {
        Text("About Us")
            .navigationBarTitle("About Us")
    }
}

struct HelpView: View {
    var body: some View {
        Text("Help & Support")
            .navigationBarTitle("Help & Support")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
