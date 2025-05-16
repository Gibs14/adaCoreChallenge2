//
//  SummaryCard.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct SummaryCard: View {
    let menu: Menu
    
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Text(menu.name)
                        .font(.headline)
                    Spacer()
                }
                HStack{
                    Text("\(menu.quantity) x Rp\(menu.price).000")
                    Spacer()
                }  
            }
            Spacer()
            Text("Rp\(menu.price * menu.quantity).000")
                .fontWeight(.bold)
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 8)
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}

#Preview {
    SummaryCard(menu: Menu(id: UUID(), name: "Nasi Goreng Kampung", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Nasi Goreng", popular: true, englishName: "Village Fried Rice"))
}
