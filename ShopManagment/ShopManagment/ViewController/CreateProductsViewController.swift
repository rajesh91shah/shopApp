//
//  CreateProductsViewController.swift
//  ShopManagment
//
//  Created by Mac on 21/09/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class CreateProductsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension CreateProductsViewController: UITableViewDelegate {

}

extension CreateProductsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CreateInfoCellIdentifier", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
