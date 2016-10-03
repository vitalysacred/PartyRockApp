//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Vitaly Sacred on 22/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    
    private var _partyRock: PartyRock! /* неопределенный тип данных, тут была ошибка */
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
        // Do any additional setup after loading the view.
    }
    
    
}
