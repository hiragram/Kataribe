//
//  ScreenListViewController.swift
//  Kataribe
//
//  Created by Yuya Hirayama on 2018/11/25.
//  Copyright © 2018年 Yuya Hirayama. All rights reserved.
//

import UIKit

private let cellIdentifier = "cell"

public final class ScreenListViewController<Source: ScreenListSource>: UITableViewController {
    private let builders = Source.builders()

    public override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "", style: .plain, target: nil, action: nil)

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

    public override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return builders.count
    }

    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

        let builder = builders[indexPath.row]

        cell.textLabel?.text = builder.displayName

        return cell
    }

    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let builder = builders[indexPath.row]

        let mock = builder.build()

        show(mock, sender: nil)
    }
}
