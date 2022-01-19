//
//  SignupPage.swift
//  Challenge Task 1
//
//  Created by Mukeshkumar Balasubramani  on 29/12/21.
//

import SwiftUI

struct SignupPage: View {
    
    @State private var firstName: String = "John"
    @State private var lastName: String = "Doe"
    @State private var emailId: String = "Johndoe@gmail.com"
    @State private var countryCode = "+44"
    @State private var phoneNumber: String = "9978638374"
    @State private var selectCenter: String = "Select Center"
    
    var body: some View {
        NavigationView {
            ZStack() {
                Spacer()
                Color.CTDarkBlue
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Hello...!")
                        .padding(.trailing, 220)
                        .foregroundColor(.CTWhite)
                        .font(.custom("Pacifico-Regular", size: 35))
                        .padding()
                    TextField("First name", text: $firstName)
                        .padding(20)
                        .frame(height: 50)
                        .font(.custom("Oswald-Regular", size: 15))
                        .background(Color.CTTextFieldColor)
                        .cornerRadius(30)
                        .foregroundColor(.CTWhite)
                        .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                    TextField("Last name", text: $lastName)
                        .padding(20)
                        .frame(height: 50)
                        .font(.custom("Oswald-Regular", size: 15))
                        .background(Color.CTTextFieldColor)
                        .cornerRadius(30)
                        .foregroundColor(.CTWhite)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    TextField("emailId", text: $emailId)
                        .padding(20)
                        .frame(height: 50)
                        .font(.custom("Oswald-Regular", size: 15))
                        .background(Color.CTTextFieldColor)
                        .cornerRadius(30)
                        .foregroundColor(.CTWhite)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    ZStack {
                        TextField("Phone Number", text: $phoneNumber)
                            .padding(.leading, 100)
                            .frame(height: 50)
                            .font(.custom("Oswald-Regular", size: 15))
                            .background(Color.CTTextFieldColor)
                            .cornerRadius(30)
                            .foregroundColor(.CTWhite)
                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        TextField("Country Code", text: $countryCode)
                            .padding(20)
                            .frame(width: 80, height: 50, alignment: .center)
                            .font(.custom("Oswald-Regular", size: 15))
                            .background(Color.CTCountryCodeColor)
                            .cornerRadius(30)
                            .foregroundColor(.CTWhite)
                            .offset(x: -135)
                    }
                    
                    TextField("Select Center", text: $selectCenter)
                        .padding(20)
                        .frame(height: 50)
                        .font(.custom("Oswald-Regular", size: 15))
                        .background(Color.CTTextFieldColor)
                        .cornerRadius(30)
                        .foregroundColor(.CTWhite)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 50, trailing: 20))
                    Button("Signup") {
                        
                    } .frame(width: 100, height: 40, alignment: .center)
                        .foregroundColor(.CTWhite)
                        .background(Color.CTOrange)
                        .cornerRadius(20)
                        .padding(.bottom, 90)
                    HStack() {
                        Text("Already Have Account?")
                            .foregroundColor(.CTWhite)
                            .font(.custom("Oswald-Regular", size: 15))
                        Button("Login") {
                            
                        } .foregroundColor(.CTOrange)
                            .font(.custom("Oswald-Regular", size: 17))
                    }
                }
                Circle()
                    .fill(Color.CTYellow)
                    .offset(x: 200, y: 370)
                    .frame(width: 130, height: 300)
                Circle()
                    .fill(Color.CTOrange)
                    .offset(x: -200, y: 350)
                    .frame(width: 150, height: 300)
            }
        }
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}
