//
//  MintViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class MintViewController: UIViewController {
    
    
    @IBOutlet weak var mintSlider: UISlider!
    
    var mintPlantTime = 35
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mintSlider.setValue(35, animated: true)
        mintInformation.text = "It's been \(mintPlantTime) days since you've sown the seed!"

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var mintInformation: UILabel!
    
    
    @IBAction func mintNumberOfDaysSincePlanting(_ sender: UISlider) {
        mintPlantTime = Int(sender.value)
        mintInformation.text = "It's been \(mintPlantTime) days since you've sown the seed!"
    }

    
    @IBAction func calculateMintDays(_ sender: UIButton) {
        if 10 ... 15 ~= mintPlantTime {
            mintInformation.text = "It's the perfect time to transplant!"
        }else if mintPlantTime >= 16 {
            mintInformation.text = "Transplanting is wayyy overdue!"
        }else if mintPlantTime < 9{
            mintInformation.text = "Check back in \(10 - mintPlantTime) days!"
        }
          else if mintPlantTime == 9{
            mintInformation.text = "Check back in a day!"
          }
        
        mintSlider.setValue(50, animated: true)
    }
    


}
