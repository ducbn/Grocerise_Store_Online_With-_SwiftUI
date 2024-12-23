//
//  WelcomeView.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Bùi Ngọc Đức on 13/12/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFit()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                Spacer()
                Text("Welcome\nto our store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("Giao hàng nhanh chóng, chất lượng đạt chuẩn")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                NavigationLink {
                    SignInView()
                } label: {
                    RoundButton(title: "Bắt Đầu") {
                        
                    }
                }
                
                Spacer()
                    .frame(height: 80)
            }
            .padding(.horizontal, 20)

        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
} 

#Preview {
    NavigationView{
        WelcomeView()
    }
    
}
