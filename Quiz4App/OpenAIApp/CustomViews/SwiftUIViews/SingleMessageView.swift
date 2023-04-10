

import SwiftUI

struct SingleMessageView: View {
    var message: String
    var date: Date?
    var sender: MessageSender
    
    init(forMessage message: String, sentAt date: Date?, from sender: MessageSender) {
        self.message = message
        self.date = date
        self.sender = sender
    }
    
    var body: some View {
        HStack {
            if sender == .user { Spacer() }
            
            VStack(alignment: .trailing, spacing: 0) {
                Text(message)
                    .foregroundColor(sender == .user ? .white : nil)
                    .padding()
                    .background(sender == .user ? Color(.blue) : Color(Colors.aiChatMessageColor))
                    .cornerRadius(16)
                    .foregroundColor(.black.opacity(0.5))
                    .font(.caption2)
            }
            
            if sender == .ai { Spacer() }
        }
        .padding(.horizontal, 4)
    }
}
