//
//  AnyPresenter.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

protocol AnyPresenter: AnyObject {
    var view: AnyView? { get set }
    var interactor: AnyInteractor? { get set }
    var router: AnyRouter? { get set }
    func interactorDidFetchData(_ response: Result<[User], Error>)
    
    func moveToUserDetailView()
}

