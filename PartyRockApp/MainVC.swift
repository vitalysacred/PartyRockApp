//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Vitaly Sacred on 22/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [partyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
                let partyRock = partyRocks[indexPath.row]
                cell.updateUI(partyrock: partyRock)
        } else {
            return UITableViewCell()
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
        
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            
        }
 
}


}
