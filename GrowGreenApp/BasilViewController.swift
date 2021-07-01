//
//  BasilViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class BasilViewController: UIViewController {

    @IBOutlet weak var basilSlider: UISlider!
    var basilPlantTime = 35
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basilSlider.setValue(35, animated: true)
        information.text = "It's been \(basilPlantTime) days since you’ve sown the seed!"

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var information: UILabel!
    
    
    @IBAction func basilNumberOfDaysSincePlanting(_ sender: UISlider) {
        basilPlantTime = Int(sender.value)
        information.text = "It's been \(basilPlantTime) days since you’ve sown the seed!"
    }
    
    
    
    @IBAction func calculateBasilDays(_ sender: UIButton) {
        if 35 ... 42 ~= basilPlantTime {
            information.text = "It's the perfect time to transplant!"
        } else if basilPlantTime >= 43 {
            information.text = "Transplanting is wayyy overdue!"
        } else if basilPlantTime < 34{
            information.text = "Check back in \(35 - basilPlantTime) days!"
        } else if basilPlantTime == 34 {
            information.text = "Check back in a day!"
        }
        
        basilSlider.setValue(50, animated: true)
    }
    
    
//    var sliderValue: Int
//    @IBAction func sliderChanged (_sender: UISlider){
//        sliderValue = Int(sender.value)
//    }

//
//    @IBAction func basilCalculations(_ sender: UIButton) if var basilUserInput = Int(numberOfDaysSinceBasilSown) ?? 0 {
//        var basilPlantTime = basilUserInput
//        var timeTillBasilTransplant = 35 - basilPlantTime
//        if 35 ... 42 ~= basilPlantTime {
//          print("It's the perfect time to transplant!")
//        } else if basilPlantTime >= 43 {
//          print("Transplanting is wayyy overdue!")
//        } else if basilPlantTime < 34{
//          print("Check back in \(timeTillBasilTransplant) days!")
//        } else if basilPlantTime == 34 {
//          print("Check back in a day!")
//        }
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
