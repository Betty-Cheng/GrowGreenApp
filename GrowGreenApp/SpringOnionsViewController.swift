//
//  SpringOnionsViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class SpringOnionsViewController: UIViewController {
    
    @IBOutlet weak var springOnionSlider: UISlider!
    
    @IBOutlet weak var springOnionInformation: UILabel!
    
    var springOnionPlantTime = 35
    

    override func viewDidLoad() {
        super.viewDidLoad()
        springOnionSlider.setValue(35, animated: true)
        springOnionInformation.text = "It's been \(springOnionPlantTime) days since you've sown the seed!"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func springOnionNumberOfDaysSincePlanting(_ sender: UISlider) {
        springOnionPlantTime = Int(sender.value)
        springOnionInformation.text = "It's been \(springOnionPlantTime) days since you've sown the seed!"
    }
    
    @IBAction func calculateSpringOnionDays(_ sender: UIButton) {
        if 7 ... 14 ~= springOnionPlantTime{
            springOnionInformation.text = "It's the perfect time to transplant!"
          } else if springOnionPlantTime >= 15 {
            springOnionInformation.text = "Transplanting is wayy overdue!"
          } else if springOnionPlantTime < 6 {
           springOnionInformation.text = "Check back in \(7 - springOnionPlantTime) days!"
          } else if springOnionPlantTime == 6{
            springOnionInformation.text = "Check back in a day!"
          }
        springOnionSlider.setValue (50, animated: true)
        
    }
    

    /*

     
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
     
    */

}
