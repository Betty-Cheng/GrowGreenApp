//
//  RosemaryViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class RosemaryViewController: UIViewController {
    
    @IBOutlet weak var rosemarySlider: UISlider!
    
    var rosemaryPlantTime = 35
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rosemarySlider.setValue(35, animated: true)
        rosemaryInformation.text = "It's been \(rosemaryPlantTime) days since you've sown the seed!"
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var rosemaryInformation: UILabel!
    

    @IBAction func rosemaryNumberOfDaysSincePlanting(_ sender: UISlider) {
        rosemaryPlantTime = Int(sender.value)
        rosemaryInformation.text = "It's been \(rosemaryPlantTime) days since you've sown the seed!"
    }
    
    
    @IBAction func calculateRosemaryDays(_ sender: UIButton) {
        if 14 ... 21 ~= rosemaryPlantTime {
            rosemaryInformation.text = "It's the perfect time to transplant!"
        } else if rosemaryPlantTime >= 22 {
            rosemaryInformation.text = "Transplanting is wayyy overdue!"
          } else if rosemaryPlantTime < 13 {
            rosemaryInformation.text = "Check back in \(14 - rosemaryPlantTime) days!"
           } else if rosemaryPlantTime == 13 {
            rosemaryInformation.text = "Check back in a day!"
           }
        
        rosemarySlider.setValue(50, animated: true)
    }
    
    

}
