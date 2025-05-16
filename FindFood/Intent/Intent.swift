//
//  Intent.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 05/05/25.
//

import AppIntents
import SwiftUI

// MARK: - Entity Definitions
struct MenuItemEntity: AppEntity {
    static var typeDisplayRepresentation: TypeDisplayRepresentation {
        TypeDisplayRepresentation(name: "Menu Item")
    }
    
    let id: UUID
    let name: String
    let englishName: String
    let tenantName: String
    let buildingName: String
    let menuImage: String
    
    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(
            title: "\(englishName)",
            subtitle: "\(buildingName) - \(tenantName)",
            image: .init(systemName: menuImage)
        )
    }
    
    static var defaultQuery = MenuItemQuery()
}

struct TenantItemEntity: AppEntity {
    static var typeDisplayRepresentation: TypeDisplayRepresentation {
        TypeDisplayRepresentation(name: "Tenant")
    }
    
    let id: UUID
    let name: String
    let buildingName: String
    let contact: String
    
    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(
            title: "\(name)",
            subtitle: "\(buildingName)",
            image: .init(systemName: "cart")
        )
    }
    
    static var defaultQuery = TenantItemQuery()
}

// MARK: - Query Implementations
struct MenuItemQuery: EntityQuery {
    func entities(for identifiers: [UUID]) async throws -> [MenuItemEntity] {
        return ArrGOP.building
            .flatMap { building in
                building.tenants.flatMap { tenant in
                    tenant.menus.map { menu in
                        MenuItemEntity(id: menu.id, name: menu.name, englishName: menu.englishName, tenantName: tenant.name, buildingName: building.name, menuImage: menu.ImageName)
                    }
                }
            }
    }
    

    func suggestedEntities() async throws -> [MenuItemEntity] {
        return ArrGOP.building
            .flatMap { building in
                building.tenants.flatMap { tenant in
                    tenant.menus.map { menu in
                        MenuItemEntity(id: menu.id, name: menu.name, englishName: menu.englishName, tenantName: tenant.name, buildingName: building.name, menuImage: menu.ImageName)
                    }
                }
            }
    }
}

struct TenantItemQuery: EntityQuery {
    func entities(for identifiers: [UUID]) async throws -> [TenantItemEntity] {
        ArrGOP.building
            .flatMap { building in
                building.tenants.compactMap { tenant in
                    TenantItemEntity(id: tenant.id, name: tenant.name, buildingName: building.name, contact: tenant.Contact)
                }
            }
            .filter { identifiers.contains($0.id) }
    }
    
    func suggestedEntities() async throws -> [TenantItemEntity] {
        ArrGOP.building
            .flatMap { building in
                building.tenants.compactMap { tenant in
                    TenantItemEntity(id: tenant.id, name: tenant.name, buildingName: building.name, contact: tenant.Contact)
                }
            }
    }
}

// MARK: - Intent Implementation
struct AskMenuIntent: AppIntent {
    static var title: LocalizedStringResource = "Ask Menu"
    static var openAppWhenRun: Bool = true
        
        @Parameter(
            title: "Menu Item",
            description: "Select a menu item"
        )
        var menuItem: MenuItemEntity
    
    static var parameterSummary: some ParameterSummary {
        Summary("Check availability for \(\.$menuItem)")
    }
    
    func perform() async throws -> some IntentResult & ProvidesDialog {
        guard let (tenant, building) = findTenantAndBuilding(for: menuItem),
              let contactNumber = ArrGOP.building
                .first(where: { $0.id == building.id })?
                .tenants.first(where: { $0.id == tenant.id })?
                .Contact
        else {
            return .result(
                dialog: "Sorry, I couldn't find availability information for \(menuItem.englishName)."
            )
        }
            
        let whatsAppManager = WhatsAppManager(phoneNumber: contactNumber)
        _ = whatsAppManager.askAvailability(
            menu: menuItem.name,
            tenant: tenant.name,
            building: building.name
        )
        
        return .result(
            dialog: "I've asked \(tenant.name) in \(building.name) about \(menuItem.englishName). You'll get a reply on WhatsApp shortly."
        )
    }
    
    private func findTenantAndBuilding(for menuItem: MenuItemEntity) -> (Tenant, Building)? {
        for building in ArrGOP.building {
                for tenant in building.tenants {
                    if tenant.menus.contains(where: { $0.id == menuItem.id }) {
                        return (tenant, building)
                    }
                    
                }
            }
            return nil
        }
}

struct ShowListMenuIntent: AppIntent {
    static var title: LocalizedStringResource = "Show List Menu"
    static var openAppWhenRun: Bool = true
        
        @Parameter(
            title: "Tenant",
            description: "Select a tenant",
            requestValueDialog: IntentDialog("Which tenant's menu you want to see?")
        )
    var tenantItem: TenantItemEntity
    
    static var parameterSummary: some ParameterSummary {
        Summary("Check availability for \(\.$tenantItem)")
    }
    
    func perform() async throws -> some IntentResult & OpensIntent {
            return .result(
                dialog: "Opening \(tenantItem.name)'s menu",
                view: TenantMenuView(tenantItem: tenantItem)
            )
        }
}

// MARK: - Shortcuts Provider
struct FoodAppShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        return [
            AppShortcut(
                intent: AskMenuIntent(),
                phrases: [
                    "I want to check stock using \(.applicationName)",
                    "Check stock using \(.applicationName)",
                    "I want to check menu using \(.applicationName)",
                    "I want to check menu in \(.applicationName)",
                    "Check menu using \(.applicationName)",
                    "Check menu in \(.applicationName)",
                    "I want to ask about \(.applicationName) menu",
                    "I want to ask about \(.applicationName) menu availability",
                    "I want to ask about menu availability using \(.applicationName)",
                    "I want to ask about menu availability in \(.applicationName)",
                    "Check \(\.$menuItem) using \(.applicationName)",
                    "I want to ask about \(\.$menuItem) using \(.applicationName)",
                    "I want to ask about \(\.$menuItem) in \(.applicationName)"
                ],
                shortTitle: "Ask Menu",
                systemImageName: "message.fill"
            ),
            AppShortcut(
                intent: ShowListMenuIntent(),
                phrases: [
                    "I want to see list of menu using \(.applicationName)",
                    "Show me list of menu using \(.applicationName)",
                    "I want to see list of menu in \(.applicationName)",
                    "Show me list of menu in \(.applicationName)"
                ],
                shortTitle: "Show List Menu",
                systemImageName: "cart.fill"
            )
        ]
    }
}

// MARK: - Views

struct TenantMenuView: View {
    let tenantItem: TenantItemEntity
    
    var body: some View {
        TenantManager().getListMenu(
            tenantName: tenantItem.name,
            contact: tenantItem.contact
        )
        .navigationTitle(tenantItem.name)
    }
}
