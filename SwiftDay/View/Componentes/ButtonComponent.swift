//
//  ButtonComponent.swift
//  SwiftDay
//
//  Created by Meliza Aguilar on 18/09/25.
//

import SwiftUI

enum ButtonStyle {
    case standard(fontColor: Color, backgroundColor: Color, buttonName: String, fontType: fontType)
    case imageWithText(imageName: String, text: String, fontColor: Color, isSelected: Bool, fontType: fontType)
    case image(imageName: String)
    case viewStruct(() -> AnyView)
    case smallImage(imageName: String)
}

enum fontType {
    case bold
    case medium
    case regular
    case semiBold
    
    var name: String{
        switch self {
            case .bold:
                return "Poppins-Bold"
            case .medium:
                return "Poppins-Medium"
            case .regular:
                return "Poppins-Regular"
            case .semiBold:
                return "Poppins-SemiBold"
        }
    }
}

struct ButtonComponent: View {
    let action: () -> Void
    let style: ButtonStyle
    
    var body: some View {
        switch style {
        case .standard(let fontColor, let backgroundColor, let buttonName, let fontType):
            Button {
                action()
            } label: {
                Text(buttonName)
                    .font(.custom(fontType.name, size: 16))
                    .foregroundStyle(fontColor)
                    .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(backgroundColor, in: .rect(cornerRadius: 20))
            .padding(.horizontal)
            
        case .imageWithText(let imageName, let text, let fontColor, let isSelected, let fontType):
            Button(action: {
                action()
            }) {
                HStack {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Text(text)
                        .font(.custom(fontType.name, size: 26))
                        .foregroundStyle(fontColor)
                        .underline(isSelected)
                }
                .cornerRadius(8)
            }
        case .image(imageName: let imageName):
            Button(action: {
                action()
            }) {
                HStack {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }
                .cornerRadius(8)
            }
        case .viewStruct(let viewBuilder):
            Button {
                action()
            } label: {
                AnyView{
                    viewBuilder()
                }
            }
        case .smallImage(let imageName):
            Button(action: {
                action()
            }) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }

        }
    }
}

#Preview{
    ButtonComponent(action: {}, style: .standard(fontColor: Color.red, backgroundColor: .blue, buttonName: "Hola", fontType: .semiBold))
}
