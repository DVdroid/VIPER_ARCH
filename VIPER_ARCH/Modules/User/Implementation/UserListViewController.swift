//
//  UserListViewController.swift
//  VIPER_ARCH
//
//  Created by VA on 26/02/22.
//

import UIKit

enum Section {
    case `default`
}

typealias TableDataSource = UITableViewDiffableDataSource<Section, User>

final class UserListViewController: UIViewController, AnyView {
    
    var presenter: AnyPresenter?
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.isHidden = true
        return tableView
    }()
    
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private var data: [User] = []
    
    lazy var dataSource: TableDataSource = {
        let dataSource = TableDataSource(tableView: self.tableView) { [weak self] tableView, indexPath, item in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = self?.data[indexPath.row].name
            
            return cell
        }
        
        return dataSource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        self.tableView.delegate = self
        title = "User List"
    }
    
    func update(with data: [User]) {
        reloadTableView(with: data)
        self.tableView.isHidden = false
        print("Table view reloaded...")
    }
    
    private func reloadTableView(with data: [User]) {
        self.data = data
        var snapShot = NSDiffableDataSourceSnapshot<Section, User>()
        snapShot.appendSections([.default])
        snapShot.appendItems(data)
        dataSource.apply(snapShot)
    }
    
    func update(with error: String) {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = error
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.centerXAnchor.constraint(equalTo: label.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: label.centerYAnchor),
            view.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 16),
        ])
        
        print("View updated with error label")
    }
}

extension UserListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        presenter?.moveToUserDetailView()
    }
}
