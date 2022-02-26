//
//  AnyRouter.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyRouter {
    var userPresenter: AnyPresenter? { get set }
    func moveToUserDetailView()
}
