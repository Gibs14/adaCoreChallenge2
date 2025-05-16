//
//  BuldingArray.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 26/03/25.
//

import Foundation

struct Building: Hashable{
    let id: UUID
    let tenants: [Tenant]
    let name: String
}

struct ArrGOP {
    static let building: [Building] = [
        .init(id: UUID(), tenants: ArrTenant1.tenant, name: "GOP 1"),
        .init(id: UUID(), tenants: ArrTenant6.tenant, name: "GOP 6"),
        .init(id: UUID(), tenants: ArrTenant9.tenant, name: "GOP 9")
        ]
}
