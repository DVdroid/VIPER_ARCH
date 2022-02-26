//
//  AnyDetailView.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyDetailView: AnyObject {
    var userDetailPresenter: AnyDetailPresenter? { get set }
}
