//
//  MenuViewF.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 26/03/25.
//

import SwiftUI

struct MenuViewChiliOil: View {
    let tenantName: String
    let phoneNumber: String
    @State private var searchText: String = ""
    @State private var menus = arrMenuChiliOil.menu
    @State private var showingMenuPicker = false
    
    private var filteredIndices: [Int] {
        menus.indices.filter { index in
            searchText.isEmpty ||
            menus[index].name.lowercased().contains(searchText.lowercased())
        }
    }
    
    private var menuCategories: [String: [Menu]] {
        var grouped = Dictionary(grouping: menus) { $0.category }
        let popularMenus = menus.filter { $0.popular }
        if !popularMenus.isEmpty {
            grouped["Popular"] = popularMenus
        }
        
        return grouped
    }
    
    private var sortedCategories: [String] {
        menuCategories.keys.sorted { $0 == "Popular" ? true : $1 != "Popular" && $0 < $1 }
    }
    
    var body: some View {
        NavigationStack {
            mainContentView
                .navigationTitle(tenantName)
                .searchable(text: $searchText, prompt: "Cari menu...")
        }
    }

    private var mainContentView: some View {
        ZStack{
            VStack {
                Spacer()
                menuContent
                Spacer(minLength: 65.0)
            }
            VStack {
                Spacer()
                
                ZStack{
                    Color(red: 236/255, green: 231/255, blue: 243/255)
                        .frame(height: 100)
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Harga total")
                                    .font(.system(size: 16))
                                    .colorInvert()
                                Text("|")
                                    .colorInvert()
                                let totalItems = menus.reduce(0) { $0 + $1.quantity }
                                Text("\(totalItems) item\(totalItems > 1 ? "s" : "")")
                                    .font(.system(size: 12))
                                    .colorInvert()
                            }
                            
                            priceCalculation
                            
                        }
                        .padding(.horizontal, 30)
                        .foregroundStyle(Color.white)
                        
                        Spacer()
                        
                        Button {
                            showingMenuPicker = true
                        } label: {
                            HStack(spacing: 5) {
                                Image("WhatsappLogo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(
                                        width: menus.allSatisfy { $0.quantity == 0 } ? 30 : 20,
                                        height: menus.allSatisfy { $0.quantity == 0 } ? 30 : 20
                                    )
                                
                                if menus.allSatisfy({ $0.quantity == 0 }) {
                                    Text("Tanya Stok")
                                        .font(.system(size: 14, weight: .medium))
                                        .foregroundColor(.white)
                                }
                            }
                            .padding(.horizontal, menus.allSatisfy { $0.quantity == 0 } ? 12 : 8)
                            .padding(.vertical, 8)
                        }
                        .background(Color.green)
                        .cornerRadius(20)
                        .padding(.trailing, menus.contains(where: { $0.quantity > 0 }) ? 0 : 20)
                        
                        if menus.contains(where: { $0.quantity > 0 }) {
                            NavigationLink {
                                SummaryView(
                                    originalMenus: $menus,
                                    selectedMenus: menus.filter { $0.quantity > 0 }
                                )
                            } label: {
                                Text("DETAIL")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(height: 44)
                                    .background(Color.purple)
                                    .cornerRadius(10)
                                    .shadow(radius: 3)
                                    .padding(.trailing, 20)
                            }
                            .buttonStyle(.plain)
                            .padding(.horizontal, 5)
                        }
                    }
                }.sheet(isPresented: $showingMenuPicker) {
                    NavigationView {
                        List(menus, id: \.self) { menu in
                            Button(action: {
                                openWhatsApp(with: menu.name)
                                showingMenuPicker = false
                            }) {
                                Text(menu.name)
                                    .foregroundColor(.primary)
                            }
                        }
                        .navigationTitle("Pilih Menu")
                        .navigationBarItems(trailing: Button("Batal") {
                            showingMenuPicker = false
                        })
                    }
                }
            }.ignoresSafeArea()
        }
    }
    
    private var priceCalculation: some View {
        let totalPrice = menus.reduce(0) { $0 + ($1.price * $1.quantity) }
        
        if totalPrice > 0 {
            return VStack(alignment: .leading) {
                Text("\(formattedPrice(totalPrice)).000")
                    .foregroundStyle(Color.black)
                    .font(.system(size: 24, weight: .bold))
                    .transition(.opacity)
            }
        } else {
            return VStack(alignment: .leading) {
                Text("\(formattedPrice(totalPrice))")
                    .foregroundStyle(Color.black)
                    .font(.system(size: 24, weight: .bold))
                    .transition(.opacity)
            }
        }
    }

    private func formattedPrice(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0
        return formatter.string(from: NSNumber(value: price))?.replacingOccurrences(of: "IDR", with: "") ?? "Rp0"
    }
    
    private var menuContent: some View {
        ScrollView {
            LazyVStack {
                if searchText.isEmpty {
                    categoriesView
                } else {
                    searchResultsView
                }
            }
            .padding(.horizontal, 15)
        }
    }
    
    private var categoriesView: some View {
        ForEach(sortedCategories, id: \.self) { category in
            VStack(alignment: .leading) {
                Text(category)
                    .font(.title2)
                    .bold()
                
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
                    ForEach(menuCategories[category] ?? [], id: \.self) { menu in
                        MenuCard(menu: binding(for: menu))
                            .padding(.vertical, 8)
                    }
                }
            }
        }
    }
    
    private var searchResultsView: some View {
        Group {
            if filteredIndices.isEmpty {
                noResultsView
            } else {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
                    ForEach(filteredIndices, id: \.self) { index in
                        MenuCard(menu: $menus[index])
                            .padding(.vertical, 8)
                    }
                }
            }
        }
    }
    
    private var noResultsView: some View {
        Text("Menu tidak ditemukan")
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
    }
    
    // Helper function untuk mendapatkan binding ke menu
    private func binding(for menu: Menu) -> Binding<Menu> {
        guard let index = menus.firstIndex(where: { $0.name == menu.name }) else {
            fatalError("Menu tidak ditemukan")
        }
        return $menus[index]
    }
    
    private func openWhatsApp(with menu: String) {
            let baseMessage = "Halo, apakah [Nama Makanan] tersedia?"
            let finalMessage = baseMessage.replacingOccurrences(of: "[Nama Makanan]", with: menu)
            
            let urlString = "https://wa.me/\(phoneNumber)?text=\(finalMessage.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)"
            
            guard let url = URL(string: urlString) else {
                print("Invalid URL")
                return
            }
            
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            } else {
                let appStoreURL = URL(string: "https://apps.apple.com/app/whatsapp-messenger/id310633997")!
                UIApplication.shared.open(appStoreURL)
            }
        }
}

#Preview {
    MenuViewChiliOil(tenantName: "tenan", phoneNumber: "098")
}
