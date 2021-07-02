//
//  PeppersViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class PeppersViewController: UIViewController {
    
    @IBOutlet weak var pepperSlider: UISlider!
    
    @IBOutlet weak var pepperInformation: UILabel!
    
    var pepperPlantTime = 35
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pepperSlider.setValue(35, animated: true)
        pepperInformation.text = "It's been \(pepperPlantTime) days since you've sown the seed!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pepperNumberOfDaysSincePlanting(_ sender: UISlider) {
        pepperPlantTime = Int(sender.value)
        pepperInformation.text = "It's been \(pepperPlantTime) days since you've sown the seed"
    }
    
    @IBAction func calculatePepperDays(_ sender: UIButton) {
        if 7 ... 21 ~= pepperPlantTime{
          pepperInformation.text = "It's the perfect time to transplant!"
        } else if pepperPlantTime >= 22 {
          pepperInformation.text = "Transplanting is wayy overdue!"
        } else if pepperPlantTime < 6{
          pepperInformation.text = "Check back in \(7 - pepperPlantTime) days!"
        } else if pepperPlantTime == 6{
          pepperInformation.text = "Check back in a day!"
        }
        
        pepperSlider.setValue (50, animated: true)
    }


}
