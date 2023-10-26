//
//  SplashView.swift
//  Adacana
//
//  Created by Vijay Parmar on 23/10/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive{
                AuthView()
            }else{
                Image("img_logo")
                     .resizable()
                     .scaledToFit()
                     .frame(width: 250, height: 250)
            }
        }
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
    }
    

}

#Preview {
    SplashView()
}
