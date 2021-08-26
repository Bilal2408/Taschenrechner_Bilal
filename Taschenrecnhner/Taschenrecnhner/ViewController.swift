//
//  ViewController.swift
//  Taschenrecnhner
//
//  Created by Bilal Gökpinar / BBS2H20A on 23.08.21.
//

import UIKit

class ViewController: UIViewController {
    

    
    // Ergebnis stelle
    @IBOutlet weak var Ergebnis: UILabel!
    var getippt = false
    var erstezahl = 0
    var zweitezahl = 0
    var operation = " "
    
    
    
    
    //Zahlen zwischen 0-9
    @IBAction func Zahlen(_ sender: UIButton) {
        
        
        // currenTitel = gibt die Nummer zurück und wird in number zugewiesen
        let number = sender.currentTitle!
        
        if getippt
        {
            Ergebnis.text = Ergebnis.text! + number
        } else {
            Ergebnis.text = number
            getippt = true
        }
        
        
    }
    
    // die Zahlen werden umformatiert in ein INT
    //Operatoren, +,-,x,/
    @IBAction func Operatoren(_ sender: UIButton) {
        
        getippt = false
        erstezahl = Int(Ergebnis.text!)!
        operation = sender.currentTitle!
        
        
    }
    
    
    
    
    
    
    @IBAction func Gleich(_ sender: UIButton) {
        
        
        getippt = false
        var result = 0
        zweitezahl = Int(Ergebnis.text!)!
        
        if operation == "✚" {
            result = erstezahl + zweitezahl
        } else if operation == "−" {
            result = erstezahl - zweitezahl
        } else if operation == "𝗫" {
            result = erstezahl * zweitezahl
        } else if operation == "÷" {
            result = erstezahl  / zweitezahl
        }
        
        Ergebnis.text = String(result)
        
    }
    
    
    
    @IBAction func loeschen(_ sender: UIButton) {
        Ergebnis.text = ""
        erstezahl = 0
        zweitezahl = 0
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
    }


}

