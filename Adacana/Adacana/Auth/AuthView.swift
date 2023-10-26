//
//  LoginView.swift
//  Adacana
//
//  Created by Vijay Parmar on 23/10/23.
//

import SwiftUI

struct AuthView: View {
    @State private var showSignupView = false
    var body: some View {
       
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack {
                    VStack(alignment: .leading,spacing: 8){
                        Text(StringConstants.kMsgWelcomeToOurCommunity)
                                .font(FontScheme.kPoppinsBold(size: 36))
                                .multilineTextAlignment(.leading)
                                .frame(width: 220)
                        Text(StringConstants.kMsgOurCommunityIs)
                            .foregroundColor(.gray)
                            
                            
                    }
                    .padding(.leading,16)
                    .padding(.top,24)
                    Image("img_logo_gray_50_01")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                    Text(StringConstants.kLblGetInThrough)
                        .font(FontScheme.kPoppinsSemiBold(size: 20))
                        .foregroundColor(.secondary)
                    Button(action: {
                        showSignupView.toggle()
                    }, label: {
                        Text(StringConstants.kLblSignUp)
                            .font(FontScheme.kPoppinsMedium(size: 20))
                            .frame(width: getRelativeWidth(311),height: getRelativeHeight(60))
                            .background(Color("Themes", bundle: nil).cornerRadius(10))
                            .foregroundColor(.white)
                    })
                    .padding()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text(StringConstants.kLblLogin)
                            .font(FontScheme.kPoppinsMedium(size: 20))
                            .frame(width: getRelativeWidth(311),height: getRelativeHeight(60))
                            .background(Color("SecondColor", bundle: nil).cornerRadius(10))
                            .foregroundColor(Color("SecondColorDark", bundle: nil))
                    })
                    
                    NavigationLink("", destination: SignupView(), isActive: $showSignupView)
                    
                    Spacer()
                }
            }
            
        }
        
        
    }
}

#Preview {
    AuthView()
}
