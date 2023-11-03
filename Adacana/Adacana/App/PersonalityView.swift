//
//  PersonalityView.swift
//  Adacana
//
//  Created by Vijay Parmar on 03/11/23.
//

import SwiftUI

struct PersonalityView: View {
    
    @State  var username:String = ""
    @State  var firstname:String = ""
    @State  var lastname:String = ""
    @State  var hobby:String = ""
    @State  var dob:String = ""
    @State  var country:String = ""
    @State var showDatePicker = false
    @StateObject private var viewModel: ViewModel

    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Button(action: {
                       // showSignupView = false
                    }) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                    }
                    .padding(.leading,24)
                    Spacer()
                    Text(StringConstants.kLblPersonality)
                        .font(FontScheme.kPoppinsMedium(size: 18))
                        .padding(.trailing,24)
                }
                .frame(height: 44)
                ScrollView(.vertical,showsIndicators: false){
                    VStack(){
                        Image("img_profile_image").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.top,16)
                        Text(StringConstants.kLblEditPhoto)
                            .font(FontScheme.kPoppinsRegular(size: 16))
                            .foregroundColor(.red)
                            .padding()
                            Spacer(minLength: 16)
                    }
                    
                    
                    VStack(alignment: .leading, spacing:16){
                    
                        Text("Username")
                            .foregroundStyle(.gray)
                        TextField("Username",text: $username)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                        Text("First Name")
                            .foregroundStyle(.gray)
                        TextField("First name",text: $firstname)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                        Text("Last Name")
                            .foregroundStyle(.gray)
                        TextField("Last Name",text: $lastname)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                           
                        Text("Hobby")
                            .foregroundStyle(.gray)
                        TextField("Hobby",text: $hobby)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                          
                        Text("Date of Birth")
                            .foregroundStyle(.gray)
                        
                        ZStack{
                            TextField("",text: $country)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: getRelativeHeight(60))
                                .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                            DatePickerTextField(placeholder: "Date of Birth", pickerType: .inline, date: self.$viewModel.selectedData)
                                .padding(.leading,8)
                        }
                        
                  
                        Text("Country")
                            .foregroundStyle(.gray)
                        TextField("Country",text: $country)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: getRelativeHeight(60))
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("LightGray", bundle: nil), style: StrokeStyle(lineWidth: 1.0)))
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(StringConstants.kLblChangeSave)
                                .frame(maxWidth: .infinity)
                                .frame(height: getRelativeHeight(60))
                                .background(Color("Themes", bundle: nil).cornerRadius(10))
                                .font(FontScheme.kPoppinsMedium(size: 20))
                                .padding()
                                .foregroundColor(.white)
                        })
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                }
            }

        }
    }
}

extension PersonalityView {
    @MainActor class ViewModel: ObservableObject {
        @Published var selectedData: Date? = Date()
    }
}

#Preview {
    PersonalityView()
}
