//
//  LettuceViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class LettuceViewController: UIViewController {
    
    @IBOutlet weak var lettuceSlider: UISlider!
    
    var lettucePlantTime = 35

    override func viewDidLoad() {
        super.viewDidLoad()
        lettuceSlider.setValue(35, animated: true)
        lettuceInformation.text = "It's been \(lettucePlantTime) days since you've sown the seed!"

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var lettuceInformation: UILabel!
    
    @IBAction func lettuceNumberOfDaysSincePlanting(_ sender: UISlider) {
        lettucePlantTime = Int(sender.value)
        lettuceInformation.text = "It's been \(lettucePlantTime) days since you've sown the seed!"
    }
    
    
    @IBAction func calculateLettuceDays(_ sender: UIButton) {
        if 21 ... 28 ~= lettucePlantTime {
          lettuceInformation.text = "It's the perfect time to transplant!"
        } else if lettucePlantTime >= 29 {
          lettuceInformation.text = "Transplanting is wayy overdue!"
        } else if lettucePlantTime < 20 {
          lettuceInformation.text = "Check back in \(21 - lettucePlantTime) days!"
        } else if lettucePlantTime == 20 {
         lettuceInformation.text = "Check back in a day!"
        }
        
        lettuceSlider.setValue(50, animated: true)
    }
    


}
