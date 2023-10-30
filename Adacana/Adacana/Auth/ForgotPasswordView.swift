//
//  ForgotPasswordView.swift
//  Adacana
//
//  Created by Vijay Parmar on 30/10/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State  var email:String = ""
    @Binding var showForgotPassView: Bool
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Button(action: {
                        showForgotPassView = false
                    }) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                    }
                    .padding(.leading,24)
                    Spacer()
                    Text(StringConstants.kLblForgotPassword)
                        .font(FontScheme.kPoppinsMedium(size: 18))
                        .padding(.trailing,24)
                }
                ScrollView(.vertical,showsIndicators: false){
                   
                    VStack{
                      
                        VStack(alignment: .leading,spacing: 8){
                            Text(StringConstants.kMsgHelpingOthersMeans)
                                    .font(FontScheme.kPoppinsBold(size: 36))
                                    .multilineTextAlignment(.leading)
                                    
                            Text(StringConstants.kMsgIfYouAreAlways)
                                .foregroundColor(.gray)
                                
                                
                        }
                        .padding(.leading,16)
                        .padding(.top,24)
                        Image("img_logo_gray_50_01_121x135")
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
                       
                            
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                         
                                Text(StringConstants.kMsgLoremIpsumDolor)
                                    .font(FontScheme.kPoppinsRegular(size: 14))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.gray)
                                    .padding()
                                Spacer()
                         
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(StringConstants.kLblStart)
                                .frame(maxWidth: .infinity)
                                .frame(height: getRelativeHeight(60))
                                .background(Color("Themes", bundle: nil).cornerRadius(10))
                                .font(FontScheme.kPoppinsMedium(size: 20))
                                .padding()
                                .foregroundColor(.white)
                        })
                     //   .frame(width: .infinity)
                     
                    }
                   
                }
                
            }

        }
        
    }
}

#Preview {
    ForgotPasswordView(showForgotPassView: .constant(true))
}
