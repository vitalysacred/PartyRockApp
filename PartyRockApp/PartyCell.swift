//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Vitaly Sacred on 22/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI (partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle // set image from url
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().async {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
            
            }
        }
    }

}
