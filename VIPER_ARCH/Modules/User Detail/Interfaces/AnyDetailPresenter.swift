//
//  AnyDetailPresenter.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyDetailPresenter: AnyObject {
    var userDetailInteractor: AnyDetailInteractor? { get set }
    var userDetailView: AnyDetailView? { get set }
    var userDetailRouter: AnyDetailRouter? { get set }
}
