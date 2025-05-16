//
//  TenantCard.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct TenantCard: View {
    let tenant: Tenant
    var body: some View {
        HStack{
            Image(tenant.ImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 110, height: 110)
                .clipped()
            VStack(alignment: .leading){
                
                Text(tenant.name)
                    .font(.headline)
                    .foregroundColor(.black)

    
                Text(tenant.Description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                
                HStack{
                    Image(systemName: "phone.circle")
                        .foregroundColor(.black)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 2, height: 2)
                        .padding(.trailing, 6)
                    Text(tenant.Contact)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }.padding(.leading, 8)
                    .padding(.top, -3)
               
                HStack{
                    HStack{
                        Image(systemName: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                            .foregroundColor(.blue)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 2, height: 2)
                            .padding(.trailing, 6)
                        Text("\((tenant.avgWaitTime+tenant.queueTime)/2) mins")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Image(systemName: "dollarsign.circle.fill")
                            .foregroundColor(.orange)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 2, height: 2)
                            .padding(.trailing, 6)
                        Text("\(tenant.minPrice)k - \(tenant.maxPrice)k")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }.padding(.leading, 15)
                    Spacer()
                }.padding(.leading, 8)
                    .padding(.top, -3)
                
            }
            .padding(.leading, 8)
        }
        .background(Color(red: 236/255, green: 231/255, blue: 243/255))

    }
}

#Preview {
    TenantCard(tenant: Tenant(id: UUID(), menus: arrMenuNasgorBangAli.menu, name: "Tenant A", ImageName: "exDummy", Description: "Ini Deskripsi", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 10, maxPrice: 15))
}
