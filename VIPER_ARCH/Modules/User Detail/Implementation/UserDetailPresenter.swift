//
//  UserDetailPresenter.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

class UserDetailPresenter: AnyDetailPresenter {
    var userDetailInteractor: AnyDetailInteractor?
    weak var userDetailView: AnyDetailView?
    var userDetailRouter: AnyDetailRouter?
}
