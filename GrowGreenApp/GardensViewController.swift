//
//  GardensViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class GardensViewController: UIViewController {
    @IBOutlet weak var findOutMoreAboutKitchenGardens: UIButton!
    @IBOutlet weak var pictureFindOutMoreAboutKitchenGardens: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        findOutMoreAboutKitchenGardens.addTarget(self, action: #selector(openKitchenGardenOne), for: .touchUpInside)
        pictureFindOutMoreAboutKitchenGardens.addTarget(self, action: #selector(openKitchenGardenTwo), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func openKitchenGardenOne() {
        if let urlToOpenOne = URL(string: "https://www.thespruce.com/vegetable-gardening-in-small-spaces-1403451") {
            UIApplication.shared.open(urlToOpenOne, options: [:]) { (done) in
            print("Link was opened successfully")
        }
    }
    }
    
    @objc func openKitchenGardenTwo() {
        if let urlToOpenTwo = URL(string: "https://www.gardendesign.com/vegetables/small.html") {
            UIApplication.shared.open(urlToOpenTwo, options: [:]) { (done) in
            print("Link was opened successfully")
        }
    }
    }


}
