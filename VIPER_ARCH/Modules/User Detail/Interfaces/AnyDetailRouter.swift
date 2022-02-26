//
//  AnyDetailRouter.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyDetailRouter: AnyObject {
    var userDetailPresenter: AnyDetailPresenter? { get set }
}
