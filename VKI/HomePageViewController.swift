//
//  HomePageViewController.swift
//  VKI
//
//  Created by Enes urkan on 2.11.2017.
//  Copyright © 2017 Enes urkan. All rights reserved.
//

import UIKit

class HomePageViewController: BaseController , UIPickerViewDataSource,UIPickerViewDelegate, UITextFieldDelegate {
    @IBOutlet weak var boyText: UITextField!
    @IBOutlet weak var kiloText: UITextField!
    @IBOutlet weak var cinsiyetText: UITextField!
    @IBOutlet weak var dropDown: UIPickerView!
    
    var cinsiyet = ["Erkek","Kadın"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) // 2. ekrandan 3. ekrana veri aktarma
    {
        if seque.identifier == "VKI"
        {
            let sonucVC = seque.destination as! SonucViewController
            var vki = Double(kiloText.text!)! / (Double(boyText.text!)! * Double(boyText.text!)!)
            vki = vki * 10000
            sonucVC.vki = String(vki) // sonuc sayfasına değer gönderme
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if ((boyText.text?.characters.count)! > 0 && (kiloText.text?.characters.count)! > 0) {
            return true
        }
        else
        {  
            let alert = UIAlertController(title: "HATA", message: "Lütfen Boş Alan Bırakmayınız", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertActionStyle.cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
        }
    }
   
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
        
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return cinsiyet.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        self.view.endEditing(true)
        return cinsiyet[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.cinsiyetText.text = self.cinsiyet[row]
        self.dropDown.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == self.cinsiyetText {
            self.dropDown.isHidden = false
            //if you dont want the users to se the keyboard type:
            
            textField.endEditing(true)
        }
        
    }
   
    

}
