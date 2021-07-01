//
//  SearcherViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class SearcherViewController: UIViewController {

    @IBOutlet weak var openGoogleMapsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        openGoogleMapsButton.addTarget(self, action: #selector(openGoogleMaps), for: .touchUpInside)
    }
    
    @objc func openGoogleMaps() {
        if let urlToOpen = URL(string: "https://googlemaps.com") {
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
