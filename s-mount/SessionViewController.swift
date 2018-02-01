//
//  SessionViewController.swift
//  s-mount
//
//  Created by Dave Gumba on 2018-01-30.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import UIKit
import DynamicColor

class SessionViewController: UIViewController {
    
    @IBOutlet weak var movesTableView: UITableView!
    
    @IBOutlet weak var frequencyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movesTableView.delegate = self
        movesTableView.dataSource = self
        
        let frequencyViewTopBorderColor = DynamicColor(hex: 0x3498db)
        frequencyView.addBorder(toSide: .Top, withColor: frequencyViewTopBorderColor.cgColor)
        
    }

}

extension SessionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoveCell", for: indexPath)
        cell.textLabel?.text = ""
        return cell
    }
    
    
}
