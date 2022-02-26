//
//  UserRouter.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

import UIKit

class UserRouter: AnyRouter {
    
    weak var userPresenter: AnyPresenter?
    weak var viewController: UIViewController?
    
    func moveToUserDetailView() {
        let detailVC = UserDetailModule().build()
        viewController?.show(detailVC, sender: nil)
    }
}
