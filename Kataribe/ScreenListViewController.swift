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
    private let screenTypes = Source.screenList()

    public override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

    public override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return screenTypes.count
    }

    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

        let screenType = screenTypes[indexPath.row]

        cell.textLabel?.text = screenType.displayName

        return cell
    }

    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let screenType = screenTypes[indexPath.row]

        let mock = screenType.mock()

        show(mock, sender: nil)
    }
}
