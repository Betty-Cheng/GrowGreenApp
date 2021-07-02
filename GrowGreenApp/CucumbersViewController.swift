//
//  CucumbersViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class CucumbersViewController: UIViewController {
    
    @IBOutlet weak var cucumberSlider: UISlider!
    @IBOutlet weak var cucumberInformation: UILabel!
    
    var cucumberPlantTime = 35
    

    override func viewDidLoad() {
        super.viewDidLoad()
        cucumberSlider.setValue(35, animated: true)
        cucumberInformation.text = "It's been \(cucumberPlantTime) days since you've sown the seed!"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cucumberNumberOfDaysSincePlanting(_ sender: UISlider) {
        cucumberPlantTime = Int(sender.value)
        cucumberInformation.text = "It's been \(cucumberPlantTime) days since you've sown the seed!"
    }
    
    
    @IBAction func calculateCucumberDays(_ sender: UIButton) {
        if 21 ... 28 ~= cucumberPlantTime {
          cucumberInformation.text = "It's the perfect time to transplant!"
        } else if cucumberPlantTime >= 29 {
          cucumberInformation.text = "Transplanting is wayy overdue!"
        } else if cucumberPlantTime < 20 {
          cucumberInformation.text = "Check back in \(21 - cucumberPlantTime) days!"
        } else if cucumberPlantTime == 20 {
          cucumberInformation.text = "Check back in a day!"
        }
        
        cucumberSlider.setValue (50, animated: true)
    }
    


}
