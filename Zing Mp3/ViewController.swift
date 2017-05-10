//
//  ViewController.swift
//  Zing Mp3
//
//  Created by Macbook on 5/11/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl_zingmp3: UILabel!

    @IBOutlet weak var img_ZingMp3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_zingmp3!.alpha = 0
        img_ZingMp3!.alpha = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
           self.img_ZingMp3.alpha = 1
        }){ (finished) in UIView.animate(withDuration: 3, animations: {
            self.lbl_zingmp3.center = CGPoint(x: self.img_ZingMp3.center.x, y: 100)
            self.lbl_zingmp3.alpha = 1
        })
        
        }
            
        }


}

