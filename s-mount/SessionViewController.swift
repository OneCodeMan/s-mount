//
//  SessionViewController.swift
//  s-mount
//
//  Created by Dave Gumba on 2018-01-30.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import UIKit
import BEMCheckBox
import DynamicColor

class SessionViewController: UIViewController {
    
    // MARK: - Moves table view
    @IBOutlet weak var movesTableView: UITableView!
    
    // MARK: - Frequency view
    @IBOutlet weak var frequencyView: UIView!
    var frequencyCheckBoxes: [BEMCheckBox]?
    @IBOutlet weak var notOftenCheckBox: BEMCheckBox!
    @IBOutlet weak var oftenCheckBox: BEMCheckBox!
    @IBOutlet weak var veryOftenCheckBox: BEMCheckBox!
    
    let grapplingMoves = GrapplingMoves()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movesTableView.delegate = self
        movesTableView.dataSource = self
        
        frequencyCheckBoxes = [notOftenCheckBox, oftenCheckBox, veryOftenCheckBox]
        notOftenCheckBox.delegate = self
        oftenCheckBox.delegate = self
        veryOftenCheckBox.delegate = self
        
        // MARK: - Frequency view styling
        let frequencyViewTopBorderColor = DynamicColor(hex: 0x08085E)
        frequencyView.addBorder(toSide: .Top, withColor: frequencyViewTopBorderColor.cgColor, withThickness: 1.0)
        
    }

}

extension SessionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoveCell", for: indexPath) as! MoveCell
        
        cell.moveNameLabel?.text = grapplingMoves.movesList[indexPath.row].moveName
        cell.moveDescriptionLabel?.text = grapplingMoves.movesList[indexPath.row].moveDescription
        cell.moveCheckBox?.on = false
        
        return cell
    }
    
}

extension SessionViewController: BEMCheckBoxDelegate {
    
    func didTap(_ checkBox: BEMCheckBox) {
        guard let frequencyCheckBoxes = frequencyCheckBoxes else { return }
        
        let currentTag = checkBox.tag
        
        for box in frequencyCheckBoxes where box.tag != currentTag {
            print(currentTag)
            box.on = false
        }
        
    }
    
}
