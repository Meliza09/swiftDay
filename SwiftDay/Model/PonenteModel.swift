//
//  PonenteModel.swift
//  SwiftDay
//
//  Created by Meliza Aguilar on 19/09/25.
//

import Foundation

struct PonenteModel{
    var id: String = ""
    var Nombre: String = ""
    var profesion: Profesion
}

enum Profesion: String, CaseIterable {
    case arquitecto = "Arq"
    case doctor = "Dr"
    case ingeniero = "Ing"
    case licenciado = "Lic"
    case estudiante = "Estudiante"
}
