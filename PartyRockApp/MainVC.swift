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
        
        let p1 = partyRock(imageURL: "https://d13yacurqjgara.cloudfront.net/users/413563/screenshots/2979485/seasonofwonder_texture.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cDBYKRjYZho\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I love uor voice")
        
        partyRocks.append(p1)
        
        let p2 = partyRock(imageURL: "https://d13yacurqjgara.cloudfront.net/users/413563/screenshots/2979485/seasonofwonder_texture.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cDBYKRjYZho\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I love uor voice")
        
        partyRocks.append(p2)
        
        let p3 = partyRock(imageURL: "https://d13yacurqjgara.cloudfront.net/users/413563/screenshots/2979485/seasonofwonder_texture.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cDBYKRjYZho\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I love uor voice")
        
        partyRocks.append(p3)
        
        
        let p4 = partyRock(imageURL: "https://d13yacurqjgara.cloudfront.net/users/413563/screenshots/2979485/seasonofwonder_texture.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cDBYKRjYZho\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I love uor voice")
        
        partyRocks.append(p4)
        
        let p5 = partyRock(imageURL: "https://d13yacurqjgara.cloudfront.net/users/413563/screenshots/2979485/seasonofwonder_texture.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cDBYKRjYZho\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I love uor voice")
        
        partyRocks.append(p5)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath ) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        
        } else {
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

