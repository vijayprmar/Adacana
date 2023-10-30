//
//  SignupView.swift
//  Adacana
//
//  Created by Vijay Parmar on 25/10/23.
//

import SwiftUI

struct SignupView: View {
    @State  var firstname:String = ""
    @State  var lastname:String = ""
    @State  var email:String = ""
    @State  var password:String = ""
    @Binding var showSignupView:Bool
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Button(action: {
                        showSignupView = false
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
                .frame(height: 44)
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        VStack(alignment: .leading,spacing: 8){
                            Text(StringConstants.kMsgWhenCommunityComes)
                                    .font(FontScheme.kPoppinsBold(size: 36))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 240)
                            Text(StringConstants.kMsgOurCommunityIs)
                                .foregroundColor(.gray)
                                
                                
                        }
                        .padding(.leading,16)
                        .padding(.top,24)
                        Image("img_logo_gray_50_01_113x116")
                            .resizable()
                            .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding()
                   
                        
                        TextField("First Name",text: $firstname)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                           
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                        
                        TextField("Last name",text: $lastname)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                           
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                        
                        
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
                            
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                         
                                Text(StringConstants.kMsgLoremIpsumDolor)
                                .font(FontScheme.kPoppinsMedium(size: 16))
                                .multilineTextAlignment(.leading)
                                    .foregroundColor(.gray)
                                    .padding()
                                Spacer()
                         
                        })
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
                        Text(StringConstants.kMsgAlreadyHaveAn)
                            .frame(alignment: .leading)
                            .padding(.leading)
                            .padding(.bottom)
                            .font(FontScheme.kPoppinsRegular(size: 16))
                           
                            .foregroundColor(.gray)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            VStack{
                                Text(StringConstants.kLblLogin)
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
    SignupView(showSignupView: .constant(true))
}
