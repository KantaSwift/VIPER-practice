//
//  HomeViewController.swift
//  VIPER-practice
//
//  Created by 上條栞汰 on 2022/12/08.
//

import UIKit
import SnapKit

final class ArticleListViewController: UIViewController {
    
// MARK: - UI
    private let listTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
// MARK: - lifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        configureNavigationBar()
    }
}

// MARK: - Private Methods
private extension ArticleListViewController {
    private func setupView() {
        view.addSubview(listTableView)
        view.backgroundColor = .systemBackground
        listTableView.delegate = self
        listTableView.dataSource = self
    }
    
    private func configureNavigationBar() {
        listTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

// MARK: - Delegate Methods
extension ArticleListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "記事のタイトル"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
