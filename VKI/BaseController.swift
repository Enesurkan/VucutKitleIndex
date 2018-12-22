//
//  BaseController.swift
//  VKI
//
//  Created by Enes urkan on 2.11.2017.
//  Copyright © 2017 Enes urkan. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dokunma()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func dokunma()
    {
        let klavyeKapatma = UITapGestureRecognizer(target: self, action: #selector(self.dissmissKeyboard))
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(klavyeKapatma)
    }
    @objc func dissmissKeyboard()
    {
        self.view.endEditing(true)
    }
    

}
