//
//  UserDetailViewController.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

import UIKit

final class UserDetailViewController: UIViewController, AnyDetailView {
    
    var userDetailPresenter: AnyDetailPresenter?
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
    }
    
    deinit {
        print(#function)
    }
}
