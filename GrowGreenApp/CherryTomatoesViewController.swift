//
//  CherryTomatoesViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class CherryTomatoesViewController: UIViewController {
    
    @IBOutlet weak var cherryTomatoSlider: UISlider!
    
    var cherryTomatoPlantTime = 35

    override func viewDidLoad() {
        super.viewDidLoad()
        cherryTomatoSlider.setValue(35, animated: true)
        cherryTomatoInformation.text = "It's been \(cherryTomatoPlantTime) days since you've sown the seed!"

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var cherryTomatoInformation: UILabel!
    
    @IBAction func cherryTomatoNumberOfDaysSincePlanting(_ sender: UISlider) {
        cherryTomatoPlantTime = Int(sender.value)
        cherryTomatoInformation.text = "It's been \(cherryTomatoPlantTime) since you've sown the seed!"
    }
    
    @IBAction func calculateCherryTomatoDays(_ sender: UIButton) {
        if 42 ... 56 ~= cherryTomatoPlantTime {
            cherryTomatoInformation.text = "It's the perfect time to transplant!"
        } else if cherryTomatoPlantTime >= 57 {
         cherryTomatoInformation.text = "Transplanting is wayy overdue!"
        } else if cherryTomatoPlantTime < 41 {
       cherryTomatoInformation.text = "Check back in \(42 - cherryTomatoPlantTime) days!"
        } else if cherryTomatoPlantTime == 41 {
          cherryTomatoInformation.text = "Check back in a day!"
        }
        
        cherryTomatoSlider.setValue(50, animated: true)
    }
    
    
    


}
