//
//  ModalComponent.swift
//  SwiftDay
//
//  Created by Meliza Aguilar on 19/09/25.
//

import SwiftUI

enum modalTyple{
    case ActividadDestacada(titulo: String, descripcion: String, horario: String)
    //case itinerario()
}

struct ModalComponent: View {
    let action: () -> Void
    let style: modalTyple
    var body: some View {
        switch style {
        case .ActividadDestacada(let titulo, let descripcion, let horario):
            VStack(alignment: .leading){
                Text(titulo)
                    .font(.custom("Poppins-Regular", size: 20))
                Text(descripcion)
                    .font(.custom("Poppins-SemiBold", size: 20))
                Text(horario)
            }.padding(20)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.orangeLab, lineWidth: 2)
                    .foregroundStyle(.clear)
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ModalComponent(action: {}, style: .ActividadDestacada(titulo: "Ponencia", descripcion: "Swift para el mundo", horario: "12:00 hrs"))
}
