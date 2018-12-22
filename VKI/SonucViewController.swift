//
//  SonucViewController.swift
//  VKI
//
//  Created by Enes urkan on 31.10.2017.
//  Copyright © 2017 Enes urkan. All rights reserved.
//

import UIKit

class SonucViewController: UIViewController {

    //@IBAction func geçiş(_ sender: Any) {
       // self.performSegue(withIdentifier: "seque1", sender: nil) //sayfa geçişi için
    //}
    @IBOutlet weak var idz: UILabel!
    @IBOutlet weak var odz: UILabel!
    @IBOutlet weak var hdz: UILabel!
    @IBOutlet weak var nk: UILabel!
    @IBOutlet weak var hs: UILabel!
    @IBOutlet weak var bdo: UILabel!
    @IBOutlet weak var ido: UILabel!
    @IBOutlet weak var udo: UILabel!
    
    @IBOutlet weak var SonucText: UILabel!
    @IBAction func ReHesapla(_ sender: Any) {
        self.performSegue(withIdentifier: "seque2", sender: nil)
    }
    var vki = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SonucText.text = vki
        if ( Double(vki)! < 16)
        {
            odz.isHidden = true
            hdz.isHidden = true
            nk.isHidden = true
            hs.isHidden = true
            bdo.isHidden = true
            ido.isHidden = true
            udo.isHidden = true
        }
        if (16 <=  Double(vki)! && Double(vki)! < 17)
        {
            idz.isHidden = true
            hdz.isHidden = true
            nk.isHidden = true
            hs.isHidden = true
            bdo.isHidden = true
            ido.isHidden = true
            udo.isHidden = true
        }
        if ( 17 <=  Double(vki)! && Double(vki)! < 18.5)
        {
            odz.isHidden = true
            idz.isHidden = true
            nk.isHidden = true
            hs.isHidden = true
            bdo.isHidden = true
            ido.isHidden = true
            udo.isHidden = true
        }
        if ( 18.5 <=  Double(vki)! && Double(vki)! < 25)
        {
            odz.isHidden = true
            hdz.isHidden = true
            idz.isHidden = true
            hs.isHidden = true
            bdo.isHidden = true
            ido.isHidden = true
            udo.isHidden = true
        }
        if ( 25 <=  Double(vki)! && Double(vki)! < 30)
        {
            odz.isHidden = true
            hdz.isHidden = true
            nk.isHidden = true
            idz.isHidden = true
            bdo.isHidden = true
            ido.isHidden = true
            udo.isHidden = true
        }
        if ( 30 <=  Double(vki)! && Double(vki)! < 35)
        {
            odz.isHidden = true
            hdz.isHidden = true
            nk.isHidden = true
            hs.isHidden = true
            idz.isHidden = true
            ido.isHidden = true
            udo.isHidden = true
        }
        if ( 35 <=  Double(vki)! && Double(vki)! < 40)
        {
            odz.isHidden = true
            hdz.isHidden = true
            nk.isHidden = true
            hs.isHidden = true
            bdo.isHidden = true
            idz.isHidden = true
            udo.isHidden = true
        }
        if ( 40 <= Double(vki)! )
        {
            odz.isHidden = true
            hdz.isHidden = true
            nk.isHidden = true
            hs.isHidden = true
            bdo.isHidden = true
            ido.isHidden = true
            idz.isHidden = true
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//
//    func hiddenFunc(label: UILabel){
//        label.isHidden = false
//    }

   

}
