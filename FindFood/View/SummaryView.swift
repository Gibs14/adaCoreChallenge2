//
//  SummaryView.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//
import SwiftUI

struct SummaryView: View {
    @Binding var originalMenus: [Menu]
    @State var selectedMenus: [Menu]
    @State private var showDeleteConfirmation = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer(minLength: 150)
                    if hasSelectedItems {
                        HStack {
                            Spacer()
                            Button(action: {
                                showDeleteConfirmation = true
                            }) {
                                Text("HAPUS SEMUA")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(.red)
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background(Color.pink.opacity(0.2))
                                    .cornerRadius(15)
                            }
                            .padding(.trailing, 20)
                            .padding(.top, 8)
                        }
                    }
                    
                    ScrollView {
                        LazyVStack(spacing: 10) {
                            ForEach(selectedMenus, id: \.name) { menu in
                                SummaryCard(menu: menu)
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                    
                    ZStack {
                        Color(red: 236/255, green: 231/255, blue: 243/255)
                            .frame(height: 100)
                        HStack {
                            Text("\(selectedMenus.reduce(0) { $0 + $1.quantity }) Item")
                                .font(.system(size: 24))
                            Spacer()
                            Text("Total:")
                                .font(.system(size: 24))
                            Text("Rp\(totalPrice).000")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .padding(.horizontal, 20)
                        .padding(.top)
                    }
                }.ignoresSafeArea()
            }
            .navigationTitle("Rekap Perhitungan")
            .animation(.easeInOut, value: hasSelectedItems)
            .alert("Hapus Semua Pilihan?", isPresented: $showDeleteConfirmation) {
                Button("Hapus", role: .destructive) {
                    resetAllSelections()
                    dismiss()
                }
                Button("Batal", role: .cancel) {}
            }
            message: {
                Text("Apakah anda yakin ingin menghapus semua menu yang telah dipilih?")
            }
        }
    }
    
    private func resetAllSelections() {
        for index in originalMenus.indices {
            originalMenus[index].quantity = 0
        }
        selectedMenus = []
    }
    
    private var totalPrice: Int {
        selectedMenus.reduce(0) { $0 + ($1.price * $1.quantity) }
    }
    
    private var hasSelectedItems: Bool {
        !selectedMenus.isEmpty
    }
}

//
//#Preview {
//    let sampleMenus = [
//        Menu(name: "Ayam Goreng", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 1, category: "Ayam", popular: true),
//        Menu(name: "Nasi Goreng", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 2, category: "Nasi", popular: true),
//        Menu(name: "Es Teh", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 1, category: "Minuman", popular: false),
//        Menu(name: "Ayam Goren", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 1, category: "Ayam", popular: true),
//        Menu(name: "Nasi Goren", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 2, category: "Nasi", popular: true),
//        Menu(name: "Es Te", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 1, category: "Minuman", popular: false),
//        Menu(name: "Ayam Gorng", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 1, category: "Ayam", popular: true),
//        Menu(name: "Nasi Goeng", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 2, category: "Nasi", popular: true),
//        Menu(name: "Es eh", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 1, category: "Minuman", popular: false),
//        Menu(name: "Ayam Greng", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 1, category: "Ayam", popular: true),
//        Menu(name: "Nasi Gog", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 2, category: "Nasi", popular: true),
//        Menu(name: "Es h", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 1, category: "Minuman", popular: false)
//    ]
//
//    struct PreviewWrapper: View {
//        @State private var originalMenus: [Menu]
//        @State private var selectedMenus: [Menu]
//        
//        init(menus: [Menu]) {
//            _originalMenus = State(initialValue: menus)
//            _selectedMenus = State(initialValue: menus.filter { $0.quantity > 0 })
//        }
//        
//        var body: some View {
//            SummaryView(
//                originalMenus: $originalMenus,
//                selectedMenus: selectedMenus
//            )
//        }
//    }
    
//    return PreviewWrapper(menus: sampleMenus)
//}
