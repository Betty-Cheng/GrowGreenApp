//
//  ResourcesViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class ResourcesViewController: UIViewController {

    @IBOutlet weak var openDIYRecipesButton: UIButton!
    
    @IBOutlet weak var openGardenSuppliesButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        openDIYRecipesButton.addTarget(self, action: #selector(openDIYRecipes), for: .touchUpInside)
        openGardenSuppliesButton.addTarget(self, action: #selector(openGardenSupplies), for: .touchUpInside)
    }
    
    @objc func openDIYRecipes() {
        if let urlToOpen = URL(string: "https://homebnc.com/best-creative-garden-container-ideas/") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    @objc func openGardenSupplies() {
        if let urlToOpen = URL(string: "https://www.gardendesign.com/how-to/tools.html") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
