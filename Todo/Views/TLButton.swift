//
//  TLButton.swift
//  Todo
//
//  Created by Jannik Scheider on 06.04.24.
//

import SwiftUI

struct TLButton: View {
    let title : String
    let background : Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Acrtion
            action()
        }label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Button",
             background: .blue){
        //Action
    }
}
