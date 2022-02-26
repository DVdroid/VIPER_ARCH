//
//  UserModule.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

import Foundation
import UIKit

class UserModule {
    
    func build() -> UIViewController {
        
        let view = UserListViewController()
        let interactor = UserInteractor()
        let presenter = UserPresenter()
        let userRouter = UserRouter()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = userRouter
        presenter.view = view
        presenter.interactor = interactor
        
        userRouter.viewController = view
        
        return view
    }
}
