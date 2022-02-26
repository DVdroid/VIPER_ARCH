//
//  AnyView.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyView: AnyObject {
    var presenter: AnyPresenter? { get set }
    func update(with data: [User])
    func update(with error: String)
}
