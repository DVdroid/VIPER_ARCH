//
//  AnyDetailInteractor.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyDetailInteractor: AnyObject {
    var userDetailPresenter: AnyDetailPresenter? { get set }
}
