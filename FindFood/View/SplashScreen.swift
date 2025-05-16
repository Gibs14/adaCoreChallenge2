//
//  SplashScreen.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 24/03/25.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var scale = 0.7
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            TenantView()
        } else {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 236/255, green: 231/255, blue: 243/255), Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack {
                    Image("AppLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    
                    Text("FindFood")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                    
                    Text("Temukan Makanan Kesukaanmu")
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.9))
                        .padding(.top, 5)
                }
                .scaleEffect(scale)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 0.5)) {
                        self.scale = 1.0
                        self.opacity = 1.0
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
