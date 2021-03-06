//
//  ViewController.swift
//  Example
//
//  Created by JN Disrupter on 9/19/17.
//  Copyright © 2017 JNDisrupter. All rights reserved.
//

import UIKit
import JNAvatarWithInitials

class ViewController: UIViewController {

    @IBOutlet weak var avatarImage1: JNAvatarWithInitials!
    @IBOutlet weak var avatarImage2: JNAvatarWithInitials!
    @IBOutlet weak var avatarImage3: JNAvatarWithInitials!
    @IBOutlet weak var avatarImage4: JNAvatarWithInitials!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initails avatar image
        self.avatarImage1.setup(imageUrl : "", fullName: "Test user", showInitails: true)
        self.avatarImage1.initialTextColor = UIColor.blue
        self.avatarImage1.backgroundColor = UIColor.lightGray
        
        // Rounded avatar image with borders
        self.avatarImage2.setup(imageUrl :"", fullName: "Jayel nabulsi", showInitails: true)
        self.avatarImage2.initialTextColor = UIColor.blue
        self.avatarImage2.backgroundColor = UIColor.lightGray
        self.avatarImage2.layer.borderColor = UIColor.black.cgColor
        self.avatarImage2.layer.borderWidth = 1
        self.avatarImage2.clipsToBounds = true
        
        // Initails avatar image
        self.avatarImage3.setup(imageUrl : "https://upload.wikimedia.org/wikipedia/commons/3/36/Hopetoun_falls.jpg", fullName: "Test test", showInitails: true)
        self.avatarImage3.initialTextColor = UIColor.blue
        self.avatarImage3.backgroundColor = UIColor.lightGray

        // Rounded avatar image with borders
        self.avatarImage4.setup(imageUrl : "https://upload.wikimedia.org/wikipedia/commons/3/36/Hopetoun_falls.jpg", fullName: "Test image", showInitails: true)
        self.avatarImage4.initialTextColor = UIColor.blue
        self.avatarImage4.backgroundColor = UIColor.lightGray
        self.avatarImage4.layer.borderColor = UIColor.black.cgColor
        self.avatarImage4.layer.borderWidth = 1
        self.avatarImage4.clipsToBounds = true
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        // Round avatar image
        self.avatarImage2.layer.cornerRadius = self.avatarImage2.bounds.width / 2
        self.avatarImage4.layer.cornerRadius = self.avatarImage4.bounds.width / 2
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

