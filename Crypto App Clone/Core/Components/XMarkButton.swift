//
//  XMarkButton.swift
//  Crypto App Clone
//
//  Created by Muhammed Talha Sağlam on 5.05.2022.
//

import SwiftUI

struct XMarkButton: View {
 
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }

    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
