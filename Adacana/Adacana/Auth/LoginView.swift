//
//  LoginView.swift
//  Adacana
//
//  Created by Vijay Parmar on 25/10/23.
//

import SwiftUI

struct LoginView: View {
    @State  var email:String = ""
    @State  var password:String = ""
    @Binding var showLoginView: Bool
    @State var showForgotPassView = false
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Button(action: {
                        showLoginView = false
                    }) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                    }
                    .padding(.leading,24)
                    Spacer()
                    Text("Sign in")
                        .font(FontScheme.kPoppinsMedium(size: 18))
                        .padding(.trailing,24)
                }
                ScrollView(.vertical,showsIndicators: false){
                   
                    VStack{
                      
                        VStack(alignment: .leading,spacing: 8){
                            Text(StringConstants.kMsgThisIsYourCommunity)
                                    .font(FontScheme.kPoppinsBold(size: 36))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 240)
                            Text(StringConstants.kMsgOurCommunityIs3)
                                .foregroundColor(.gray)
                                
                                
                        }
                        .padding(.leading,16)
                        .padding(.top,24)
                        Image("img_logo_gray_50_01_113x116")
                            .resizable()
                            .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding()
                   
                        
                        TextField("Email",text: $email)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                           
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                        SecureField("Password",text: $password)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                           
                            .padding(.leading)
                            .padding(.trailing)
                            
                        Button(action: {
                            showForgotPassView.toggle()
                        }, label: {
                         
                                Text(StringConstants.kMsgForgotPassword)
                                    .font(FontScheme.kPoppinsMedium(size: 16))
                                    .foregroundColor(.red)
                                    .padding()
                                Spacer()
                         
                        })
                        NavigationLink("", destination:  ForgotPasswordView(showForgotPassView: $showForgotPassView).navigationBarBackButtonHidden(true) , isActive: $showForgotPassView)
                        
            
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(StringConstants.kLblNext)
                                .frame(maxWidth: .infinity)
                                .frame(height: getRelativeHeight(60))
                                .background(Color("Themes", bundle: nil).cornerRadius(10))
                                .font(FontScheme.kPoppinsMedium(size: 20))
                                .padding()
                                .foregroundColor(.white)
                        })
                     //   .frame(width: .infinity)
                     
                    }
                    HStack(alignment: .center,spacing: 4){
                        Text(StringConstants.kMsgDonTHaveAnAccount)
                            .frame(alignment: .leading)
                            .padding(.leading)
                            .padding(.bottom)
                            .font(FontScheme.kPoppinsRegular(size: 16))
                           
                            .foregroundColor(.gray)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            VStack{
                                Text(StringConstants.kLblSignup2)
                                    .font(FontScheme.kPoppinsMedium(size: 16))
                                    .foregroundColor(.red)
                                Spacer()
                            }
                        })
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }
                
            }
           
        }
        
    }
}

#Preview {
    
    LoginView(showLoginView: .constant(true))
}
