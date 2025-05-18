//
//  FindFoodService.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 05/05/25.
//

import SwiftUI

struct WhatsAppManager {
    let phoneNumber: String
    
    func askAvailability(menu: String, tenant: String, building: String) -> Bool {
        let message = """
        Halo, apakah benar ini CP untuk \(tenant) di \(building)?
        Apakah \(menu) masih tersedia?
        """
        return sendMessage(message: message)
    }
    
    // Private helper to handle actual sending
    private func sendMessage(message: String) -> Bool {
        guard let encodedMessage = message.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "https://wa.me/\(phoneNumber)?text=\(encodedMessage)") else {
            return false
        }
        
        DispatchQueue.main.async {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.open(URL(string: "https://apps.apple.com/app/whatsapp-messenger/id310633997")!)
            }
        }
        
        return true
    }
}
