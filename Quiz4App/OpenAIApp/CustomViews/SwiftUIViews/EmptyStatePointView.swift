

import SwiftUI

protocol EmptyStatePointViewDelegate {
    func didTapOnExample(text: String)
}

struct EmptyStatePointView: View {
    let text: String
    var delegate: EmptyStatePointViewDelegate? = nil // Needed for examples block as options there are tappable
    
    var body: some View {
        VStack {
            if let delegate = delegate {
                Button {
                    delegate.didTapOnExample(text: text)
                } label: {
                    Text("\""+text+"\"") + Text(Image(systemName: "arrow.right"))
                }
            } else {
                Text(text)
            }
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
        .multilineTextAlignment(.center)
    }
}

extension EmptyStatePointView {
    init(text: String, delegate: EmptyStatePointViewDelegate) {
        self.text = text
        self.delegate = delegate
    }
}
