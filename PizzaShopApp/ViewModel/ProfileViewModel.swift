//
//  ProfileViewModel.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 25.06.2023.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    @Published var profile: MWUser
    
    init(profile: MWUser) {
        self.profile = profile
    }
    
    
    func setProfile() {
        
        DataBaseService.shared.setProfile(user: self.profile) { result in
            switch result {
            case .success(let user):
                print(user.name)
            case .failure(let error):
                print("Oshibka otpravki \(error.localizedDescription)")
            }
        }
        
    }
    
    func getProfile() {
        
        DataBaseService.shared.getProfile { result in
            switch result {
                
            case .success(let user):
                self.profile = user
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
}
