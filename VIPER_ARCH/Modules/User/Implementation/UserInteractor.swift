//
//  Usernteractor.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

import Foundation

class UserInteractor: AnyInteractor {
    weak var presenter: AnyPresenter?
    
    func fetchUserData() {
        print("fetchData called...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            
            guard let self = self else { return }
            let number = Int.random(in: 0...5)
            if number % 2 == 0 {
                print("Success response returned...")
                self.presenter?.interactorDidFetchData(.success(User.mock()))
            } else {
                print("Failure response returned...")
                self.presenter?.interactorDidFetchData(.failure(UserError.unknownError))
            }
        }
    }
}
