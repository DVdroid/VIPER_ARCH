//
//  AnyInteractor.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyInteractor: AnyObject {
    var presenter: AnyPresenter? { get set }
    func fetchUserData()
}
