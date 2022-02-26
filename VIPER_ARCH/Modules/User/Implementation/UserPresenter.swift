//
//  UserPresenter.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

class UserPresenter: AnyPresenter {
    weak var view: AnyView?
    var router: AnyRouter?
    
    var interactor: AnyInteractor? {
        didSet {
            interactor?.fetchUserData()
        }
    }
    
    func interactorDidFetchData(_ response: Result<[User], Error>) {
        switch response {
        case .success(let data):
            print("View updated with success response...")
            view?.update(with: data)
        case .failure(let error):
            print("View updated with failure response...")
            view?.update(with: error.localizedDescription)
        }
    }
    
    func moveToUserDetailView() {
        router?.moveToUserDetailView()
    }
}
