//
//  UserDetailModule.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

import Foundation
import UIKit

class UserDetailModule {
    
    func build() -> UIViewController {
        
        let userDetailView = UserDetailViewController()
        let userDetailInteractor = UserDetailInteractor()
        let userDetailPresenter = UserDetailPresenter()
        let userDetailRouter = UserDetailRouter()
        
        userDetailView.userDetailPresenter = userDetailPresenter
        
        userDetailInteractor.userDetailPresenter = userDetailPresenter
        
        userDetailPresenter.userDetailRouter = userDetailRouter
        userDetailPresenter.userDetailView = userDetailView
        userDetailPresenter.userDetailInteractor = userDetailInteractor
        
        userDetailRouter.userDetailPresenter = userDetailPresenter
        
        return userDetailView
    }
}
