//  TenantView.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct TenantView: View {
    @State var searchTextTenant: String = ""
    @State private var selectedGOP: String = "GOP 1"
    @State private var showDetailPage: Bool = false
    @State private var sortOption: String = "Time"
    
    // Get tenants for currently selected GOP
    var filteredTenants: [Tenant] {
        guard let building = ArrGOP.building.first(where: { $0.name == selectedGOP }) else {
            return []
        }
        
        var tenants = building.tenants
        
        // Apply search filter
        if !searchTextTenant.isEmpty {
            tenants = tenants.filter {
                $0.name.lowercased().contains(searchTextTenant.lowercased())
            }
        }
        
        // Apply sorting
        switch sortOption {
        case "Price Range":
            return tenants.sorted { ($0.minPrice + $0.maxPrice)/2 < ($1.minPrice + $1.maxPrice)/2 }
        case "Time":
            return tenants.sorted { $0.queueTime < $1.queueTime }
        default:
            return tenants.sorted { $0.queueTime < $1.queueTime }
        }
    }
    
    var body: some View {
        NavigationStack {
            mainContentView
                .searchable(text: $searchTextTenant, prompt: "Cari tenant...")
            Spacer(minLength: 20.0)
        }
        .tint(.purple)
    }
    
    private var mainContentView: some View {
        VStack {
            Spacer(minLength: 20.0)
            Text("Pilih Lokasi Tenant")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            segmentedPicker
            Spacer(minLength: 20.0)
            sortTenants
            tenantList
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Tenant")
    }
    
    private var segmentedPicker: some View {
        let picker = Picker("Select Building", selection: $selectedGOP) {
            buildingOptions
        }
        return picker
            .pickerStyle(.segmented)
            .padding(.horizontal)
            .tint(.clear)
            .background(Color.clear)
    }

    private var buildingOptions: some View {
        ForEach(ArrGOP.building, id: \.name) { building in
            buildingOption(building: building)
        }
    }

    private func buildingOption(building: Building) -> some View {
        Text(building.name)
            .tag(building.name)
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity)
            .background(buildingBackground(building: building))
            .foregroundColor(buildingForeground(building: building))
            .cornerRadius(8)
    }

    private func buildingBackground(building: Building) -> Color {
        selectedGOP == building.name ? Color("EB4141") : Color("FFEAEA")
    }

    private func buildingForeground(building: Building) -> Color {
        selectedGOP == building.name ? .white : Color("EB4141")
    }
    
    private var sortTenants: some View {
        HStack {
            Spacer()
            Picker("Sort", selection: $sortOption) {
                Text("Harga").tag("Price Range")
                Text("Waktu").tag("Time")
            }
            .pickerStyle(.menu)
            .tint(.purple)
        }
        .padding(.horizontal)
    }
    
    private var tenantList: some View {
        ScrollView {
            if filteredTenants.isEmpty && !searchTextTenant.isEmpty {
                noResultsView
            } else {
                LazyVGrid(columns: [GridItem(.flexible())]) {
                    ForEach(filteredTenants, id: \.name) { tenant in
                        tenantCard(for: tenant)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    private func tenantCard(for tenant: Tenant) -> some View {
        NavigationLink(destination: getMenuView(for: tenant)) {
            TenantCard(tenant: tenant)
                .background(content: { Color.white })
                .cornerRadius(10)
                .shadow(radius: 2)
        }
        .onTapGesture {
            showDetailPage.toggle()
        }
        .sensoryFeedback(.success, trigger: showDetailPage)
    }
    
    private var noResultsView: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 48))
                .foregroundColor(.gray)
                .padding()
            Text("Tenant tidak ditemukan")
                .font(.title2)
                .foregroundColor(.gray)
            Text("Silahkan coba lagi dengan kata kunci lain")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(maxHeight: .infinity)
    }
    
    @ViewBuilder
    func getMenuView(for tenant: Tenant) -> some View {
        switch tenant.name{
        case "Nasi Goreng Bang Ali":
            MenuViewNasgorBangAli(tenantName: tenant.name, phoneNumber: tenant.Contact)
        case "Kantin Jempol":
            MenuViewJempol(tenantName: tenant.name, phoneNumber: tenant.Contact)
        case "Zhi Lin":
            MenuViewZhilin(tenantName: tenant.name, phoneNumber: tenant.Contact)
        case "Mama Rosa":
            MenuViewRosa(tenantName: tenant.name, phoneNumber: tenant.Contact)
        case "Straw Juice":
            StrawJuiceMenu(tenantName: tenant.name, phoneNumber: tenant.Contact)
        case "Bang Chili Oil":
            MenuViewChiliOil(tenantName: tenant.name, phoneNumber: tenant.Contact)
        case "Sari Merah":
            MenuViewSariMerah(tenantName: tenant.name, phoneNumber: tenant.Contact)
        case "Kasturi":
            MenuViewKasturi(tenantName: tenant.name, phoneNumber: tenant.Contact)
        default:
            Text("")
        }
    }
}

#Preview {
    TenantView()
}
