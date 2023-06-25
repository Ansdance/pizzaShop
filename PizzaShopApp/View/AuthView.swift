//
//  ContentView.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct AuthView: View {
    
    @State private var isAuth = true
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @State private var isTabViewShow = false
    @State private var isShowAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(isAuth ? "Авторизация" : "Регистрация")
                .padding()
                .padding(.horizontal, 30) .font (.title2.bold()) .background (Color("whiteAlpha"))
                .cornerRadius(isAuth ? 30 : 60)
            VStack {
                TextField("Введите Email", text: $email)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                if !isAuth {
                    SecureField("Повторите пароль", text: $confirmPassword)
                        .padding()
                        .background(Color("whiteAlpha"))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button {
                    if isAuth {
                        print("Авторизация пользователя")
                        isTabViewShow.toggle()
                    } else {
                        print("Регистрация")
                        
                        guard password == confirmPassword else {
                            self.alertMessage = "Paroli ne sovpadaut"
                            self.isShowAlert.toggle()
                            return
                        }
                        
                        AuthService.shared.signUp(email: self.email,
                                                  password: self.password) {result in
                            switch result {
                            case.success(let user):
                                alertMessage = "Vy zaregalis s email \(user.email!)"
                                self.isShowAlert.toggle()
                                self.email = ""
                                self.password = ""
                                self.confirmPassword = ""
                                self.isAuth.toggle()
                            case .failure(let error):
                                alertMessage = "Oshibka registracii \(error.localizedDescription)"
                            }
                        }
                    }
                    
                } label: {
                    Text(isAuth ? "Войти" : "Создать Аккаунт")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("yellow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(.black)
                }
                
                Button {
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "еще не с нами?" : "уже есть Акк")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("orange"))
                }
               
            }
            .padding()
            .padding(.top, 16)
            .background(Color.white)
            .cornerRadius(24)
            .padding(isAuth ? 30 : 12)
            .alert(alertMessage, isPresented: $isShowAlert) {
                Button {} label: {
                    Text("ok")
                }
            }

        }.frame (maxWidth: .infinity, maxHeight: .infinity)
                .background (Image ("bg")
                    .ignoresSafeArea ()
                    .blur(radius: isAuth ? 0 : 6))
                .animation(Animation.easeInOut(duration: 0.5), value: isAuth)
                .fullScreenCover(isPresented: $isTabViewShow) {
                    MainTabBar()
                }
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            AuthView()
        }
    }
