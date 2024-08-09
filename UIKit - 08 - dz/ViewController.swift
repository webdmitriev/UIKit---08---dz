//
//  ViewController.swift
//  UIKit - 08 - dz
//
//  Created by Олег Дмитриев on 09.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let postData = PostData.mockData()
    
    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.separatorStyle = .none
        $0.register(PostCell.self, forCellReuseIdentifier: PostCell.reuseID)
        return $0
    }(UITableView(frame: view.frame, style: .plain))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "List"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.layoutMargins.left = 50
        
        view.backgroundColor = .systemOrange
        
        view.addSubview(tableView)
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.reuseID, for: indexPath) as! PostCell
        let post = postData[indexPath.row]
        cell.setupCell(post: post)
        
        cell.selectionStyle = .none
        
        
        
        return cell
    }
    
    
}
