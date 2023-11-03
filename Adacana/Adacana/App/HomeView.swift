//
//  HomeView.swift
//  Adacana
//
//  Created by Vijay Parmar on 30/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            
            Image("img_profile_image").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding(.top,16)
            Text("Adalah")
                .font(FontScheme.kPoppinsSemiBold(size: 20))
            Text("Alcanasatre")
                .font(FontScheme.kPoppinsRegular(size: 18))
                .foregroundStyle(.gray)
            Text(StringConstants.kMsgJoined6MonthAgo)
                .font(FontScheme.kPoppinsRegular(size: 12))
                .foregroundStyle(.gray)
                .padding()
          
            Button(action:{}, label: {
                HStack(){
                    Image("img_location")
                        .padding(.leading,36)
                    Spacer()
                    Text(StringConstants.kLblPersonality)
                        .foregroundStyle(.secondColorDark)
                        .font(FontScheme.kPoppinsMedium(size: 16))
                    Spacer()
                        Image("img_arrow_icon")
                        .padding(.trailing,36)
                }
            })
            .frame(height:60)
            .background(Color("SecondColor", bundle: nil).cornerRadius(10))
            .padding(.leading,24)
            .padding(.trailing,24)
            Button(action:{}, label: {
                HStack(){
                    Image("img_file")
                        .padding(.leading,36)
                    Spacer()
                    Text(StringConstants.kLblWorkTodayS)
                        .foregroundStyle(Color("Purple", bundle: nil))
                        .font(FontScheme.kPoppinsMedium(size: 16))
                    Spacer()
                        Image("img_stroke_1_deep_purple_a400")
                        .padding(.trailing,36)
                }
            })
            .frame(height:60)
            .background(Color("PurpleLight", bundle: nil).cornerRadius(10))
            .padding(.leading,24)
            .padding(.trailing,24)
            Button(action:{}, label: {
                HStack(){
                    Image("img_settings")
                        .padding(.leading,36)
                    Spacer()
                    Text(StringConstants.kLblSetting)
                        .foregroundStyle(Color("Themes", bundle: nil))
                        .font(FontScheme.kPoppinsMedium(size: 16))
                    Spacer()
                        Image("img_stroke_1_primary")
                        .padding(.trailing,36)
                }
            })
            .frame(height:60)
            .background(Color("ThemesLight", bundle: nil).cornerRadius(10))
            .padding(.leading,24)
            .padding(.trailing,24)
            
            Spacer()
            
            
        }
    }
}

#Preview {
    HomeView()
}
