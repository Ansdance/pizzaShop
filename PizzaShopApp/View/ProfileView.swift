//
//  ProfileVIew.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isAvaAlertActionPresented = false
    @State var isQuitAlertPresent = false
    @State var isAuthViewPresent = false
    
    @StateObject var viewModel: ProfileViewModel
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            HStack(spacing: 16) {
                Image("user")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(8)
                    .background(Color.gray)
                    .clipShape(Circle())
                    .onTapGesture {
                        isAvaAlertActionPresented.toggle()
                    }
                    .confirmationDialog("Ot kuda vzyat fotku", isPresented: $isAvaAlertActionPresented) {
                        Button {
                            
                        } label: {
                            Text("Is galerii")
                        }
                        
                        Button {
                            
                        } label: {
                            Text("S Camery")
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Otmena")
                        }
                    }
                
                VStack(alignment: .leading, spacing: 12) {
                    TextField("Imya", text: $viewModel.profile.name)
                        .font(.body.bold())
                    HStack {
                        Text("+7")
                        TextField("Telefon", value: $viewModel.profile.phone, format: .number)
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Adress DOstavki")
                    .bold()
                TextField("Vash adress", text: $viewModel.profile.address)
            }.padding(.horizontal)
            
            //tablica s zakazami
            List {
                Text("Vashi zakazy budut tut")
            }.listStyle(.plain)
            
            Button {
                isQuitAlertPresent.toggle()
            } label: {
                Text("Vyiti")
                    .padding()
                    .padding(.horizontal, 30)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(24)
            }.padding()
                .confirmationDialog("Deistvitelno vyiti", isPresented: $isQuitAlertPresent) {
                    Button {
                        isAuthViewPresent.toggle()
                    } label: {
                        Text("da")
                    }
                    
                }.fullScreenCover(isPresented: $isAuthViewPresent, onDismiss: nil) {
                    AuthView()
                }
        }
        .onSubmit {
            viewModel.setProfile()
        }
        
        .onAppear {
            self.viewModel.getProfile()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: ProfileViewModel(profile: MWUser(id: "",
                                                                name: "Vasya DDDDD",
                                                                phone: 876865232,
                                                                address: "adresss new")))
    }
}
