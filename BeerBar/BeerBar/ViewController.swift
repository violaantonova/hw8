//
//  ViewController.swift
//  BeerBar
//
//  Created by виола:) on 20.06.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var barName: UILabel!
    @IBOutlet weak var newWorkShiftButton :UIButton!
    @IBOutlet var reminders: [UILabel]!
    @IBOutlet var volumeButtons: [UIButton]!
   
    @IBOutlet var beers: [UILabel]!
    
    var arrayOfBeers = ["Dinner" , "Julius" , "Orval" , "Parabola"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        barName.text = "GroBar"
    }
    @IBAction func newWorkShiftAction (_ sender : Any) {
        print ("Начало новой смены")
    }
    
    @IBAction func reset(_ sender: Any) {
        print ("Обнуление")
    }
    
    @IBAction func buyBeer(_ sender: UIButton) {
        let tag = sender.tag
        let row = tag / 10
        let column = tag % 10
        print ("Куплено 0.33 пива \"\(beers[row].text!)\"\n\(reminders[row].text!)")
        print ("Куплено 0.5 пива \"\(beers[row].text!)\"\n\(reminders[row].text!)")
        print ("Куплено 1 пива \"\(beers[row].text!)\"\n\(reminders[row].text!)")
    }
}


