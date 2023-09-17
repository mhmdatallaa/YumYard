//
//  ToastMessageView.swift
//  YumYard
//
//  Created by Mohamed Atallah on 17/09/2023.
//

import SwiftUI

struct ToastMessageView: View {
    @Binding var showToast: Bool
    let message: String

    var body: some View {
        VStack {
            Spacer()
            if showToast {
                Text(message)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .transition(.move(edge: .bottom))
                    .animation(.easeOut, value: 0.3)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            showToast = false
                        }
                    }
            }
        }
    }
}

