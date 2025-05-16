//
//  MenuArray.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import Foundation

struct Menu: Hashable{
    let id: UUID
    let name: String
    let ImageName: String
    let Description: String
    let price: Int
    var quantity: Int
    let category: String
    let popular: Bool
    let englishName: String
}

struct arrMenuNasgorBangAli {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "Nasi Goreng Kampung", ImageName: "NSKampung", Description: "nasi, ayam, telur dadar", price: 13, quantity: 0, category: "Nasi Goreng", popular: true, englishName: "Village Fried Rice"),
        .init(id: UUID(), name: "Nasi Goreng Setan", ImageName: "NSSetan", Description: "nasi, ayam, sosis, sambal pedas setan", price: 15, quantity: 0, category: "Nasi Goreng", popular: true, englishName: "Devil Fried Rice"),
        .init(id: UUID(), name: "Nasi Goreng Tek Tek", ImageName: "NSTektek", Description: "nasi, ayam, telur", price: 15, quantity: 0, category: "Nasi Goreng", popular: false, englishName: "Tek Tek Fried Rice"),
        .init(id: UUID(), name: "Nasi Goreng Ikan Asin", ImageName: "NSIkanAsin", Description: "nasi, ikan asin, telur", price: 20, quantity: 0, category: "Nasi Goreng", popular: false, englishName: "Fried Rice"),
        .init(id: UUID(), name: "Nasi Goreng Spesial", ImageName: "NSSpesial", Description: "nasi, bakso, sosis, ayam, telur", price: 25, quantity: 0, category: "Nasi Goreng", popular: true, englishName: "Special Fried Rice"),
        .init(id: UUID(), name: "Nasi Goreng Bakso Ikan", ImageName: "NSBsIkan", Description: "nasi, bakso ikan, telur", price: 20, quantity: 0, category: "Nasi Goreng", popular: false, englishName: "Fish Ball Fried Rice"),
        .init(id: UUID(), name: "Nasi Goreng Cabe Ijo", ImageName: "NSCabeIjo", Description: "nasi, ayam, telur, cabe ijo", price: 20, quantity: 0, category: "Nasi Goreng", popular: false, englishName: "Green Chili Fried Rice"),
    ]
}


struct arrMenuJempol {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "Ayam Goreng", ImageName: "AGrg", Description: "", price: 10, quantity: 0, category: "Ayam", popular: true, englishName: "Fried Chicken"),
        .init(id: UUID(), name: "Ayam Balado", ImageName: "ABalado", Description: "", price: 10, quantity: 0, category: "Ayam", popular: true, englishName: "Balado Chicken"),
        .init(id: UUID(), name: "Ayam Bakar", ImageName: "ABakar", Description: "", price: 10, quantity: 0, category: "Ayam", popular: false, englishName: "Grilled Chicken"),
        .init(id: UUID(), name: "Ayam Asam Manis", ImageName: "AAsamManis", Description: "", price: 10, quantity: 0, category: "Ayam", popular: false, englishName: "Sweet and Sour Chicken"),
        .init(id: UUID(), name: "Sapi Lada Hitam", ImageName: "SpLadaHitam", Description: "", price: 13, quantity: 0, category: "Ayam", popular: false, englishName: "Black Pepper Beef"),
        .init(id: UUID(), name: "Sapi Teriyaki", ImageName: "SpTeriyaki", Description: "", price: 13, quantity: 0, category: "Sapi", popular: false, englishName: "Teriyaki Beef"),
        .init(id: UUID(), name: "Sapi Sei", ImageName: "SpSei", Description: "", price: 13, quantity: 0, category: "Sapi", popular: false, englishName: "Sei Beef"),
        .init(id: UUID(), name: "Capcay", ImageName: "Capcay", Description: "sawi, wortel, jamur kuping, jagung muda", price: 5, quantity: 0, category: "Sayuran", popular: false, englishName: "Chop Suey"),
        .init(id: UUID(), name: "Brokoli", ImageName: "Brokoli", Description: "", price: 5, quantity: 0, category: "Sayuran", popular: false, englishName: "Brocolli"),
        .init(id: UUID(), name: "Nasi Putih", ImageName: "NP", Description: "", price: 2, quantity: 0, category: "Nasi", popular: false, englishName: "Rice"),
        .init(id: UUID(), name: "Nasi Merah", ImageName: "NM", Description: "", price: 2, quantity: 0, category: "Nasi", popular: false, englishName: "Brown Rice")
    ]
}

struct arrMenuZhilin {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "XL Crispy Chicken Balado", ImageName: "ZhilinChicken", Description: "XL bumbu balado", price: 15, quantity: 0, category: "XL Crispy Chicken", popular: true, englishName: "XL Crispyy Chicken Balado"),
        .init(id: UUID(), name: "XL Crispy Chicken Seaweed", ImageName: "ZhilinChicken", Description: "XL bumbu seaweed", price: 15, quantity: 0, category: "XL Crispy Chicken", popular: false, englishName: "XL Crispyy Chicken Seaweed"),
        .init(id: UUID(), name: "XL Crispy Chicken Jagung Bakar + Balado", ImageName: "ZhilinChicken", Description: "XL bumbu jagung bakar + balado", price: 18, quantity: 0, category: "XL Crispy Chicken", popular: true, englishName: "XL Crispyy Chicken Grilled Corn + Balado"),
        .init(id: UUID(), name: "XL Crispy Chicken Jagung Bakar + Seaweed", ImageName: "ZhilinChicken", Description: "XL bumbu jagung bakar + seaweed", price: 18, quantity: 0, category: "XL Crispy Chicken", popular: false, englishName: "XL Crispyy Chicken Grilled Corn + Seaweed"),
        .init(id: UUID(), name: "XXL Crispy Chicken Balado", ImageName: "ZhilinChickenXXL", Description: " XXL bumbu balado", price: 20, quantity: 0, category: "XXL Crispy Chicken", popular: true, englishName: "XXL Crispy Chicken Balado"),
        .init(id: UUID(), name: "XXL Crispy Chicken Seaweed", ImageName: "ZhilinChickenXXL", Description: "XXL bumbu seaweed", price: 20, quantity: 0, category: "XXL Crispy Chicken", popular: false, englishName: "XXL Crispy Chicken Seaweed"),
        .init(id: UUID(), name: "XXL Crispy Chicken Jagung Bakar + Balado", ImageName: "ZhilinChickenXXL", Description: "XXL bumbu jagung bakar + balado", price: 25, quantity: 0, category: "XXL Crispy Chicken", popular: true, englishName: "XXL Crispy Chicken Grilled Corn + Balado"),
        .init(id: UUID(), name: "XXL Crispy Chicken Jagung Bakar + Seaweed", ImageName: "ZhilinChickenXXL", Description: "XXL bumbu jagung bakar + seaweed", price: 25, quantity: 0, category: "XXL Crispy Chicken", popular: false, englishName: "XXL Crispy Chicken Grilled Chicken + Seaweed"),
    ]
}

struct arrMenuRosa {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "Ayam Madu", ImageName: "AyMadu", Description: "", price: 15, quantity: 0, category: "Ayam", popular: false, englishName: "Honey Chicken"),
        .init(id: UUID(), name: "Ayam Kecap", ImageName: "AyKecap", Description: "", price: 15, quantity: 0, category: "Ayam", popular: false, englishName: "Sweet Soy Chicken"),
        .init(id: UUID(), name: "Ayam Asam Manis", ImageName: "AyAsamManis", Description: "", price: 15, quantity: 0, category: "Ayam", popular: true, englishName: "Sweet and Sour Chicken"),
        .init(id: UUID(), name: "Pepes Ayam", ImageName: "AyPepes", Description: "", price: 15, quantity: 0, category: "Ayam", popular: true, englishName: "Spiced Grilled Chicken in Banana Leaf"),
        .init(id: UUID(), name: "Sapi Brokoli", ImageName: "SapBrokol", Description: "", price: 18, quantity: 0, category: "Sapi", popular: false, englishName: "Brocolli Beef"),
        .init(id: UUID(), name: "Sapi Lada Hitam", ImageName: "SapLdHitam", Description: "", price: 18, quantity: 0, category: "Sapi", popular: false, englishName: "Black Pepper Beef"),
        .init(id: UUID(), name: "Sapi Bulgogi", ImageName: "SapBulgogi", Description: "", price: 18, quantity: 0, category: "Sapi", popular: true, englishName: "Beef Bulgogi"),
        .init(id: UUID(), name: "Tumis Bayam Jagung", ImageName: "BymJagung", Description: "", price: 13, quantity: 0, category: "Sayuran", popular: false, englishName: "Stir-fried Spinach with Corn"),
        .init(id: UUID(), name: "Kangkung Terasi", ImageName: "Kangkung", Description: "", price: 13, quantity: 0, category: "Sayuran", popular: true, englishName: "Spinach with Shrimp Paste"),
        .init(id: UUID(), name: "Tahu Toge", ImageName: "TahuToge", Description: "", price: 13, quantity: 0, category: "Sayuran", popular: false, englishName: "Tofu with Bean Sprouts"),
        .init(id: UUID(), name: "Nasi Bakar Ayam Goreng", ImageName: "NBGoreng", Description: "nasi bakar, ayam goreng, timun", price: 25, quantity: 0, category: "Paket Nasi", popular: false, englishName: "Grilled Rice with Fried Chicken"),
        .init(id: UUID(), name: "Nasi Bakar Ayam Bakar", ImageName: "NBBakar", Description: "nasi bakar, ayam bakar, timun", price: 25, quantity: 0, category: "Paket Nasi", popular: true, englishName: "Grilled Rice with Grilled Chicken"),
        .init(id: UUID(), name: "Nasi Putih", ImageName: "NP", Description: "", price: 0, quantity: 0, category: "Nasi", popular: false, englishName: "Rice"),
        .init(id: UUID(), name: "Nasi Merah", ImageName: "NM", Description: "", price: 0, quantity: 0, category: "Nasi", popular: false, englishName: "Brown Rice"),
    ]
}


struct arrMenuChiliOil {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "Mie Ayam", ImageName: "MieAyam", Description: "mie, ayam, caisim", price: 13, quantity: 0, category: "Mie Kecil", popular: false, englishName: "Chicken Noodles"),
        .init(id: UUID(), name: "Mie Ayam Jamur", ImageName: "MieAJamur", Description: "mie, ayam, jamur, caisim", price: 15, quantity: 0, category: "Mie Kecil", popular: false, englishName: "Chicken Mushroom Noodles"),
        .init(id: UUID(), name: "Mie Ayam Pangsit", ImageName: "MieAPangsit", Description: "mie, ayam, pangsit rebus, caisim", price: 18, quantity: 0, category: "Mie Kecil", popular: false, englishName: "Chicken Noodles with Dumplings"),
        .init(id: UUID(), name: "Mie Ayam Bakso", ImageName: "MieABakso", Description: "mie, ayam, bakso, caisim", price: 18, quantity: 0, category: "Mie Kecil", popular: false, englishName: "Chicken Noodles with Meatballs"),
        .init(id: UUID(), name: "Mie Ayam Spesial", ImageName: "MieASpesial", Description: "mie, ayam, bakso, pangsit rebus, caisim", price: 25, quantity: 0, category: "Mie Kecil", popular: true, englishName: "Special Chicken Noodles"),
        .init(id: UUID(), name: "Bihun Ayam", ImageName: "MieAyam", Description: "bihun, ayam, caisim", price: 13, quantity: 0, category: "Bihun", popular: false, englishName: "Chicken Rice Vermicelli"),
        .init(id: UUID(), name: "Bihun Jamur", ImageName: "MieAJamur", Description: "bihun, ayam, jamur, caisim", price: 15, quantity: 0, category: "Bihun", popular: false, englishName: "Mushroom Rice Vermicelli"),
        .init(id: UUID(), name: "Bihun Pangsit", ImageName: "MieAPangsit", Description: "bihun, ayam, pangsit rebus, caisim", price: 18, quantity: 0, category: "Bihun", popular: false, englishName: "Rice Vermicelli with Dumplings"),
        .init(id: UUID(), name: "Bihun Bakso", ImageName: "MieABakso", Description: "bihun, ayam, bakso, caisim", price: 18, quantity: 0, category: "Bihun", popular: false, englishName: "Rice Vermicelli with Meatballs"),
        .init(id: UUID(), name: "Bihun Spesial", ImageName: "MieASpesial", Description: "bihun, ayam, bakso, pangsit rebus, caisim", price: 25, quantity: 0, category: "Bihun", popular: true, englishName: "Special Rice Vermicelli"),
        .init(id: UUID(), name: "Kwetiaw Ayam", ImageName: "MieAyam", Description: "kwetiaw, ayam, caisim", price: 15, quantity: 0, category: "Kwetiaw", popular: false, englishName: "Chicken Flat Rice Noodles"),
        .init(id: UUID(), name: "Kwetiaw Jamur", ImageName: "MieAJamur", Description: "kwetiaw, ayam, jamur, caisim", price: 17, quantity: 0, category: "Kwetiaw", popular: false, englishName: "Mushroom Flat Rice Noodles"),
        .init(id: UUID(), name: "Kwetiaw Pangsit", ImageName: "MieAPangsit", Description: "kwetiaw, ayam, pangsit rebus, caisim", price: 20, quantity: 0, category: "Kwetiaw", popular: false, englishName: "Flat Rice Noodles with Dumplings"),
        .init(id: UUID(), name: "Kwetiaw Bakso", ImageName: "MieABakso", Description: "kwetiaw, ayam, bakso, caisim", price: 20, quantity: 0, category: "Kwetiaw", popular: false, englishName: "Flat Rice Noodles with Meatballs"),
        .init(id: UUID(), name: "Kwetiaw Spesial", ImageName: "MieASpesial", Description: "kwetiaw, ayam, bakso, pangsit rebus, caisim", price: 30, quantity: 0, category: "Kwetiaw", popular: true, englishName: "Special Flat Rice Noodles"),
    ]
}

struct arrMenuSariMerah {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "Nasi Rendang", ImageName: "NsRendang", Description: "nasi, rendang, sambal", price: 10, quantity: 0, category: "1 lauk", popular: true, englishName: "Rendang Rice"),
        .init(id: UUID(), name: "Nasi Gulai Ayam", ImageName: "NsGulaiAy", Description: "nasi, gulai ayam, sambal", price: 10, quantity: 0, category: "1 lauk", popular: false, englishName: "Chicken Curry Rice"),
        .init(id: UUID(), name: "Nasi Tongseng Kambing", ImageName: "NsTongsengK", Description: "nasi, tongseng kambing, sambal", price: 10, quantity: 0, category: "1 lauk", popular: false, englishName: "Lamb Stew Rice"),
        .init(id: UUID(), name: "Nasi Ayam Pop", ImageName: "NsAyPop", Description: "nasi, ayam pop, sambal", price: 10, quantity: 0, category: "1 lauk", popular: false, englishName: "Padang Style Fried Chicken Rice"),
        .init(id: UUID(), name: "Nasi Rendang Singkong", ImageName: "NsRendang", Description: "nasi, rendang, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: true, englishName: "Rendang with Cassava Leaves Rice"),
        .init(id: UUID(), name: "Nasi Gulai Ayam Singkong", ImageName: "NsGulaiAy", Description: "nasi, gulai ayam, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: false, englishName: "Chicken Curry with Cassava Leaves Rice"),
        .init(id: UUID(), name: "Nasi Tongseng Kambing Singkong", ImageName: "NsTongsengK", Description: "nasi, tongseng kambing, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: false, englishName: "Lamb Stew with Cassava Leaves Rice"),
        .init(id: UUID(), name: "Nasi Ayam Pop Singkong", ImageName: "NsAyPop", Description: "nasi, ayam pop, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: false, englishName: "Padang Chicken with Cassava Leaves Rice"),
        .init(id: UUID(), name: "Tempe Goreng", ImageName: "TempeG", Description: "", price: 5, quantity: 0, category: "Gorengan", popular: false, englishName: "Fried Tempeh"),
        .init(id: UUID(), name: "Tahu Goreng", ImageName: "TahuG", Description: "", price: 5, quantity: 0, category: "Gorengan", popular: false, englishName: "Fried Tofu"),
        .init(id: UUID(), name: "Lumpia", ImageName: "Lumpia", Description: "lumpia isi wortel, bihun", price: 5, quantity: 0, category: "Gorengan", popular: true, englishName: "Spring Roll"),
    ]
}

struct arrStrawJuice {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "Jus Strawberry", ImageName: "JusStrob", Description: "strawberry, gula", price: 10, quantity: 0, category: "Juice", popular: true, englishName: "Strawberry Juice"),
        .init(id: UUID(), name: "Jus Sirsak", ImageName: "JusSirsak", Description: "sirsak, gula", price: 10, quantity: 0, category: "Juice", popular: true, englishName: "Sirsak Juice"),
        .init(id: UUID(), name: "Jus Belimbing", ImageName: "JusBelimbing", Description: "belimbing, gula", price: 10, quantity: 0, category: "Juice", popular: false, englishName: "Belimbing Juice"),
        .init(id: UUID(), name: "Jus Tomat", ImageName: "JusTomat", Description: "tomat, gula", price: 10, quantity: 0, category: "Juice", popular: false, englishName: "Tomato Juice"),
        .init(id: UUID(), name: "Jus Jeruk", ImageName: "JusOrange", Description: "orange, gula", price: 10, quantity: 0, category: "Juice", popular: false, englishName: "Orange Juice"),
        .init(id: UUID(), name: "Jus Tomat Wortel", ImageName: "JusOrangeMix", Description: "tomat, wortel, gula", price: 20, quantity: 0, category: "Mix 2 Juice", popular: false, englishName: "Tomato Carrot Juice"),
        .init(id: UUID(), name: "Jus Strawberry Pisang", ImageName: "JusPinkMix", Description: "strawberry, pisang, gula", price: 20, quantity: 0, category: "Mix 2 Juice", popular: true, englishName: "Spring Roll"),
        .init(id: UUID(), name: "Jus Strawberry Sirsak", ImageName: "JusPinkMix", Description: "strawberry, sirsak, gula", price: 20, quantity: 0, category: "Mix 2 Juice", popular: true, englishName: "Spring Roll"),
        .init(id: UUID(), name: "Jus Strawberry Pisang Sirsak", ImageName: "JusPinkMix", Description: "strawberry, pisang, sirsak, gula", price: 25, quantity: 0, category: "Mix 3 Juice", popular: true, englishName: "Strawbery Banana Sirsak Juice"),
        .init(id: UUID(), name: "Jus Jeruk Pisang Sirsak", ImageName: "JusOrangeMix", Description: "orange, pisang, sirsak, gula", price: 25, quantity: 0, category: "Mix 3 Juice", popular: false, englishName: "Orange Banana Sirsak Juice"),
    ]
}

struct arrKasturi {
    static let menu: [Menu] = [
        .init(id: UUID(), name: "Ayam Teriyaki", ImageName: "SpTeriyaki", Description: "Ayam dengan saus teriyaki manis-gurih", price: 25, quantity: 0, category: "Menu Ayam", popular: false, englishName: "Teriyaki Chicken"),
        .init(id: UUID(), name: "Ayam Bistik", ImageName: "SpTeriyaki", Description: "Ayam bistik dengan saus khas", price: 25, quantity: 0, category: "Menu Ayam", popular: false, englishName: "Beefsteak Style Chicken"),
        .init(id: UUID(), name: "Ayam Asam Manis", ImageName: "SpTeriyaki", Description: "Ayam dengan saus asam manis", price: 25, quantity: 0, category: "Menu Ayam", popular: false, englishName: "Sweet and Sour Chicken"),
        .init(id: UUID(), name: "Ayam Lada Hitam/Fillet", ImageName: "SpTeriyaki", Description: "Ayam fillet lada hitam", price: 25, quantity: 0, category: "Menu Ayam", popular: false, englishName: "Black Pepper Chicken Fillet"),
        .init(id: UUID(), name: "Ayam Goreng Serundeng", ImageName: "SpTeriyaki", Description: "Ayam goreng dengan taburan serundeng", price: 25, quantity: 0, category: "Menu Ayam", popular: false, englishName: "Fried Chicken with Coconut Flkes"),
        .init(id: UUID(), name: "Ayam Goreng Balado", ImageName: "SpTeriyaki", Description: "Ayam goreng sambal balado", price: 25, quantity: 0, category: "Menu Ayam", popular: false, englishName: "Balado Fried Chicken"),
        .init(id: UUID(), name: "Ayam Bakar", ImageName: "SpTeriyaki", Description: "Ayam bakar bumbu spesial", price: 25, quantity: 0, category: "Menu Ayam", popular: true, englishName: "Grilled Chicken"),

        .init(id: UUID(), name: "Sapi Lada Hitam", ImageName: "SpTeriyaki", Description: "Daging sapi lada hitam", price: 30, quantity: 0, category: "Menu Sapi & Lainnya", popular: true, englishName: "Black Pepper Beef"),
        .init(id: UUID(), name: "Mapo Tofu", ImageName: "SpTeriyaki", Description: "Tahu dengan saus pedas khas Sichuan", price: 20, quantity: 0, category: "Menu Sapi & Lainnya", popular: false, englishName: "Tofu Mapo"),

        .init(id: UUID(), name: "Ikan Cakalang Suwir", ImageName: "SpTeriyaki", Description: "Suwiran ikan cakalang pedas", price: 25, quantity: 0, category: "Menu Ikan", popular: true, englishName: "Shredded Skipjack Tuna"),
        .init(id: UUID(), name: "Ikan Dori Asam Manis", ImageName: "SpTeriyaki", Description: "Ikan dori saus asam manis", price: 25, quantity: 0, category: "Menu Ikan", popular: false, englishName: "Sweet and Sour Dory Fish"),
        .init(id: UUID(), name: "Ikan Sarden Rica", ImageName: "SpTeriyaki", Description: "Ikan sarden bumbu rica-rica", price: 25, quantity: 0, category: "Menu Ikan", popular: false, englishName: "Spicy Sardines"),
        .init(id: UUID(), name: "Ikan Tongkol Balado", ImageName: "SpTeriyaki", Description: "Ikan tongkol sambal balado", price: 25, quantity: 0, category: "Menu Ikan", popular: false, englishName: "Balado Tuna"),

        .init(id: UUID(), name: "Cumi Cabe Hijau", ImageName: "SpTeriyaki", Description: "Cumi dengan cabe hijau pedas", price: 30, quantity: 0, category: "Menu Seafood & Lauk", popular: true, englishName: "Squid with Green Chili"),
        .init(id: UUID(), name: "Kentang Masak Balado", ImageName: "SpTeriyaki", Description: "Kentang balado pedas", price: 15, quantity: 0, category: "Menu Seafood & Lauk", popular: false, englishName: "Balado Potato"),
        .init(id: UUID(), name: "Otak-Otak Spore Rica", ImageName: "SpTeriyaki", Description: "Otak-otak bumbu rica khas Singapura", price: 20, quantity: 0, category: "Menu Seafood & Lauk", popular: false, englishName: "Singaporean Spicy Fish Cake"),
        .init(id: UUID(), name: "Sosis Oseng Bawang Cabe Rawit", ImageName: "SpTeriyaki", Description: "Sosis tumis bawang dan cabe rawit", price: 20, quantity: 0, category: "Menu Seafood & Lauk", popular: false, englishName: "Sausage with Shallots and Bird's Eye Chili"),
        .init(id: UUID(), name: "Mie Goreng Telor", ImageName: "SpTeriyaki", Description: "Mie goreng dengan telur", price: 15, quantity: 0, category: "Menu Seafood & Lauk", popular: false, englishName: "Fried Noodles with Egg"),
        .init(id: UUID(), name: "Orek Tempe Balado", ImageName: "SpTeriyaki", Description: "Tempe orek sambal balado", price: 15, quantity: 0, category: "Menu Seafood & Lauk", popular: false, englishName: "Balado Fried Tempeh"),

        .init(id: UUID(), name: "Telor Dadar Tipis", ImageName: "SpTeriyaki", Description: "Telur dadar tipis gurih", price: 10, quantity: 0, category: "Menu Telor", popular: false, englishName: "Thin Omelette"),
        .init(id: UUID(), name: "Telor Ceplok Balado", ImageName: "SpTeriyaki", Description: "Telur ceplok sambal balado", price: 10, quantity: 0, category: "Menu Telor", popular: true, englishName: "Balado Sunny Side Egg"),
        .init(id: UUID(), name: "Telor Ceplok Ponti Cabe Rawit", ImageName: "SpTeriyaki", Description: "Telur ceplok dengan cabe rawit", price: 10, quantity: 0, category: "Menu Telor", popular: false, englishName: "Sunny Side Up Egg with Bird's Eye Chili"),
        .init(id: UUID(), name: "Telor Bulat Balado", ImageName: "SpTeriyaki", Description: "Telur rebus balado", price: 10, quantity: 0, category: "Menu Telor", popular: false, englishName: "Balado Boiled Egg"),
        .init(id: UUID(), name: "Telor Puyuh Balado", ImageName: "SpTeriyaki", Description: "Telur puyuh balado", price: 10, quantity: 0, category: "Menu Telor", popular: false, englishName: "Balado Quail Eggs"),

        .init(id: UUID(), name: "Sayur Sawi Putih", ImageName: "SpTeriyaki", Description: "Sawi putih tumis bawang", price: 10, quantity: 0, category: "Menu Sayuran", popular: false, englishName: "Stir-fried Cabbage"),
        .init(id: UUID(), name: "Sayur Toge", ImageName: "SpTeriyaki", Description: "Toge tumis pedas", price: 10, quantity: 0, category: "Menu Sayuran", popular: false, englishName: "Bean Sprouts"),
        .init(id: UUID(), name: "Sayur Labu", ImageName: "SpTeriyaki", Description: "Labu kuning santan", price: 10, quantity: 0, category: "Menu Sayuran", popular: false, englishName: "Pumpkin in Coconut Milk"),
        .init(id: UUID(), name: "Sayur Terong Balado", ImageName: "SpTeriyaki", Description: "Terong sambal balado", price: 10, quantity: 0, category: "Menu Sayuran", popular: true, englishName: "Balado Eggplant"),
        .init(id: UUID(), name: "Sayur Nangka", ImageName: "SpTeriyaki", Description: "Nangka muda santan", price: 10, quantity: 0, category: "Menu Sayuran", popular: false, englishName: "Young Jackfruit in Coconut Milk"),

        .init(id: UUID(), name: "Bakwan Jagung", ImageName: "SpTeriyaki", Description: "Bakwan jagung renyah", price: 8, quantity: 0, category: "Gorengan", popular: true, englishName: "Corn Fritters"),
        .init(id: UUID(), name: "Martabak Telor", ImageName: "SpTeriyaki", Description: "Martabak telur isi daging", price: 15, quantity: 0, category: "Gorengan", popular: false, englishName: "Egg Martabak"),
        .init(id: UUID(), name: "Bakwan Sayur", ImageName: "SpTeriyaki", Description: "Bakwan sayur gurih", price: 8, quantity: 0, category: "Gorengan", popular: false, englishName: "Vegetable Fritters"),
        .init(id: UUID(), name: "Piscok", ImageName: "SpTeriyaki", Description: "Pisang coklat goreng", price: 8, quantity: 0, category: "Gorengan", popular: false, englishName: "Fried Banana with Chocolate"),

        .init(id: UUID(), name: "Nasi Putih 1 porsi", ImageName: "SpTeriyaki", Description: "Nasi putih", price: 5, quantity: 0, category: "Nasi", popular: true, englishName: "Rice 1 Portion"),
        .init(id: UUID(), name: "Nasi Putih setengah porsi", ImageName: "SpTeriyaki", Description: "Setengah porsi nasi putih", price: 3, quantity: 0, category: "Nasi", popular: false, englishName: "Rice Half Portion"),
        .init(id: UUID(), name: "Nasi Merah 1 porsi", ImageName: "SpTeriyaki", Description: "Nasi merah sehat", price: 7, quantity: 0, category: "Nasi", popular: false, englishName: "Brown Rice 1 Portion"),
        .init(id: UUID(), name: "Nasi Merah setengah porsi", ImageName: "SpTeriyaki", Description: "Setengah porsi nasi merah", price: 4, quantity: 0, category: "Nasi", popular: false, englishName: "Brown Rice Half Portion"),

        .init(id: UUID(), name: "Sambal Merah", ImageName: "SpTeriyaki", Description: "Sambal merah pedas", price: 2, quantity: 0, category: "Sambal", popular: true, englishName: "Red Chili Sauce"),
        .init(id: UUID(), name: "Sambal Dabu Dabu", ImageName: "SpTeriyaki", Description: "Sambal khas Manado", price: 2, quantity: 0, category: "Sambal", popular: false, englishName: "Dabu-Dabu Chili Sauce"),
        .init(id: UUID(), name: "Sambal Hijau", ImageName: "SpTeriyaki", Description: "Sambal cabe hijau", price: 2, quantity: 0, category: "Sambal", popular: false, englishName: "Green Chili Sauce")
    ]
}
