//
//  loginPage.swift
//  Challenge Task 1
//
//  Created by Mukeshkumar Balasubramani  on 28/12/21.
//

import SwiftUI

struct loginPage: View {
    
    @State private var userName: String = "Johndoe@gmail.com"
    @State private var password: String = "1234567890"
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color.CTDarkBlue
                    .edgesIgnoringSafeArea(.all)
                Group {
                    Circle()
                        .fill(Color.CTYellow)
                        .offset(x: -200, y: -200)
                        .frame(width: 400, height: 300)
                    Circle()
                        .fill(Color.CTOrange)
                        .frame(width: 100, height: 150)
                        .offset(x: -170, y: 50)
                    Circle()
                        .fill(Color.CTViolet)
                        .frame(width: 50, height: 50)
                        .offset(x: -110, y: 98)
                    Circle()
                        .fill(Color.CTPink)
                        .offset(x: 130, y: -300)
                        .frame(width: 190, height: 400)
                    Capsule()
                        .fill(Color.CTViolet)
                        .frame(width: 125, height: 170)
                        .offset(x: -30, y: -180)
                    Circle()
                        .fill(Color.CTGreen)
                        .frame(width: 100, height: 100)
                        .offset(x: -30, y: -10)
                    Circle()
                        .fill(Color.CTOrange)
                        .frame(width: 400, height: 120)
                        .offset(x: -30, y: -100)
                    ZStack {
                        customview(width: 120, height: 120, xOffSet: 50, yOffSet: 50, colour: Color.CTWhite)
                            .offset(x: 70, y: 45)
                        customview(width: 120, height: 120, xOffSet: -50, yOffSet: 50, colour: .CTYellow)
                            .offset(x: 180, y: 45)
                    }
                    Circle()
                        .fill(Color.CTGreen)
                        .frame(width: 130, height: 150)
                        .offset(x: 128, y: -40)
                }
                VStack {
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Welcome")
                                .frame(width: 200, height: 30)
                                .font(.custom("Pacifico-Regular", size: 35))
                                .foregroundColor(.CTWhite)
                                .offset(x: 0, y: -60)
                            Text("Back")
                                .frame(width: 200, height: 30)
                                .foregroundColor(.CTWhite)
                                .font(.custom("Pacifico-Regular", size: 35))
                                .offset(x: -25, y: -50)
                        }
                        Spacer()
                    }
                    TextField("User Name", text: $userName)
                        .padding()
                        .font(.custom("Oswald-Regular", size: 15))
                        .background(Color.CTTextFieldColor)
                        .cornerRadius(30)
                        .foregroundColor(.CTWhite)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                    SecureField("Password", text: $password)
                        .padding()
                        .font(.custom("Oswald-Regular", size: 15))
                        .foregroundColor(.CTWhite)
                        .background(Color.CTTextFieldColor)
                        .cornerRadius(30)
                        .padding(EdgeInsets(top: 0, leading:    20, bottom: 10, trailing: 20))
                        
                    Button {
                        
                    } label: {
                        Text("Forgot password?")
                            .foregroundColor(.CTWhite)
                            .font(.custom("Oswald-Regular", size: 17))
                            .fontWeight(.bold)
                            .padding(EdgeInsets(top: 0, leading: 220, bottom: 0, trailing: 0))
                    } .padding(.bottom, 20)
                    
                    Button("Login") {
                        
                    } .frame(width: 100, height: 40, alignment: .center)
                        .font(.custom("Oswald-Regular", size: 18))
                        .foregroundColor(.CTWhite)
                        .background(Color.CTOrange)
                        .cornerRadius(20)
                        .padding(.bottom, 20)
                    HStack {
                        Text("New User?")
                            .foregroundColor(.CTWhite)
                            .font(.custom("Oswald-Regular", size: 15))
                        Button("SignUp") {
                            
                        } .foregroundColor(.CTOrange)
                            .font(.custom("Oswald-Regular", size: 17))
                    }
                }
            }
        }
    }
}


struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        loginPage()
    }
}
