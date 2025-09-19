//
//  MainView.swift
//  SwiftDay
//
//  Created by Meliza Aguilar on 19/09/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color.white
            GeometryReader { geometry in
                VStack(alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.orangeLab)
                        .frame(height: geometry.size.height * 0.30)
                    VStack(alignment: .leading){
                        ScrollView(.horizontal){
                            HStack(alignment: .center){
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height: 100)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height: 100)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        Text("Fechas y horarios")
                            .font(.custom("Poppins-Bold", size: 30))
                            .multilineTextAlignment(.center)
                        Spacer()
                    }.padding(20)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
