//
//  Menu.swift
//  MiDieta
//
//  Created by Bernat on 7/14/26.
//

import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Hashable, Identifiable {
    var id: UUID
    var name: String
    var ingredients: [String]
    var instructions: String
    
    #if DEBUG
    static let example = MenuItem(id: UUID(), name: "Avo-Egg Toast", ingredients: [
        "2 rebanadas de pan",
        "30 g de aguacate (aproximadamente 1/3 de una pieza pequeña)",
        "Hojas de espinaca al gusto",
        "Hojas de arúgula al gusto",
        "2 huevos estrellados",
        "Aceite en aerosol",
        "1 porción de fruta"], instructions: "Tuesta las dos rebanadas de pan. Unta el aguacate sobre las tostadas. Agrega las hojas de espinaca y arúgula. Cocina los huevos en un sartén antiadherente, sin añadir grasa. Coloca los huevos sobre las tostadas. Acompaña con una porción de fruta fresca.")
    #endif
}
