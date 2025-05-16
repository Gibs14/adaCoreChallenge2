//
//  TenantArray.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import Foundation

struct Tenant: Hashable{
    let id: UUID
    let menus: [Menu]
    var name: String
    var ImageName: String
    var Description: String
    var Contact: String
    var avgWaitTime: Int
    var queueTime: Int
    var minPrice: Int
    var maxPrice: Int
}

struct ArrTenant1 {
    static let tenant: [Tenant] = [
        .init(id: UUID(), menus: arrMenuNasgorBangAli.menu, name: "Nasi Goreng Bang Ali", ImageName: "logoNasGoR", Description: "Specialis nasi goreng", Contact: "6282112956642", avgWaitTime: 15, queueTime: 5, minPrice: 13, maxPrice: 25),
        .init(id: UUID(), menus: arrMenuJempol.menu, name: "Kantin Jempol", ImageName: "logoJempol", Description: "Aneka masakan rumahan", Contact: "6282112956642", avgWaitTime: 15, queueTime: 15, minPrice: 2, maxPrice: 15),
        .init(id: UUID(), menus: arrMenuZhilin.menu, name: "Zhi Lin", ImageName: "logoZhiLin", Description: "Taiwanese crispy chicken", Contact: "6282112956642", avgWaitTime: 15, queueTime: 5, minPrice: 15, maxPrice: 25)
    ]
}

struct ArrTenant6 {
    static let tenant: [Tenant] = [
        .init(id: UUID(), menus: arrMenuRosa.menu, name: "Mama Rosa", ImageName: "logoMamaRosa", Description: "Prasmanan aneka masakan rumahan", Contact: "6282112956642", avgWaitTime: 15, queueTime: 5, minPrice: 13, maxPrice: 25),
        .init(id: UUID(), menus: arrStrawJuice.menu, name: "Straw Juice", ImageName: "logoJus", Description: "Daily fresh juice", Contact: "6282112956642", avgWaitTime: 15, queueTime: 15, minPrice: 10, maxPrice: 25)
    ]
}

struct ArrTenant9 {
    static let tenant: [Tenant] = [
        .init(id: UUID(), menus: arrMenuChiliOil.menu, name: "Bang Chili Oil", ImageName: "logoMie", Description: "Bakmie Ayam Chilli Oil”", Contact: "6282112956642", avgWaitTime: 0, queueTime: 3, minPrice: 13, maxPrice: 30),
        .init(id: UUID(), menus: arrMenuSariMerah.menu, name: "Sari Merah", ImageName: "exDummy", Description: "Spesialis nasi kapau", Contact: "6282112956642", avgWaitTime: 0, queueTime: 5, minPrice: 5, maxPrice: 15),
        .init(id: UUID(), menus: arrKasturi.menu, name: "Kasturi", ImageName: "exDummy", Description: "Warteg Semua Umat", Contact: "6281380770081", avgWaitTime: 0, queueTime: 5, minPrice: 5, maxPrice: 15),
    ]
}
