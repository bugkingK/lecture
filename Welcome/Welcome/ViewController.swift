//
//  ViewController.swift
//  Welcome
//
//  Created by moon.kwon on 2023/02/19.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet private weak var tableView: UITableView!
    
    private let tableData: [String] = (1...10).map { "\($0)" }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
    }
    
    func setupLayout() {
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let title = tableData[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WelcomeCell", for: indexPath) as? WelcomeCell {
            cell.setup(title: title)
            return cell
        } else {
            return .init()
        }
    }
}


class WelcomeCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    
    func setup(title: String) {
        titleLabel.text = title
    }
}
