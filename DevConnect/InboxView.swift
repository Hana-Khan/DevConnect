//
//  InboxView.swift
//  DevConnect
//
//  Created by Hina Khan on 27/08/2023.
//

import SwiftUI


struct InboxView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(inboxMessages) { message in
                    NavigationLink(destination: MessageDetailView(message: message)) {
                        InboxRow(message: message)
                    }
                }
            }
            .navigationBarTitle("Inbox")
        }
    }
}

struct InboxRow: View {
    var message: Message

    var body: some View {
        HStack {
            Image(systemName: "envelope.fill")
                .font(.system(size: 30))
                .foregroundColor(.blue)
                .padding(.trailing, 10)

            VStack(alignment: .leading, spacing: 5) {
                Text(message.sender)
                    .font(.headline)
                Text(message.subject)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct MessageDetailView: View {
    var message: Message

    var body: some View {
        VStack {
            Image(systemName: "envelope.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)
            Text("From: \(message.sender)")
                .font(.headline)
                .padding(.bottom)
            Text(message.body)
                .multilineTextAlignment(.leading)
                .padding()
        }
        .navigationBarTitle("Message")
    }
}

struct Message: Identifiable {
    var id = UUID()
    var sender: String
    var subject: String
    var body: String
}

let inboxMessages: [Message] = [
    Message(sender: "John Doe", subject: "Hello!", body: "Hi, how are you doing?"),
    Message(sender: "Jane Smith", subject: "Meeting Tomorrow", body: "Let's discuss the project details."),
    Message(sender: "Alice Johnson", subject: "Invitation", body: "You're invited to our team event."),
    Message(sender: "Mark Davis", subject: "Important Update", body: "Please review the latest changes to the document."),
]


struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
