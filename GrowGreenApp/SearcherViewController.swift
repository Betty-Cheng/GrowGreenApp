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
        if let urlToOpen = URL(string: "https://www.google.com/search?tbs=lf:1,lf_ui:1&tbm=lcl&sxsrf=ALeKk03eEatgx5Z_bDUwCIhWR5RBiVnDhg:1625100367980&q=nearby+community+garden&rflfq=1&num=10&sa=X&ved=2ahUKEwjjiqHR0sDxAhXJ-Z4KHd9jABIQjGp6BAgmEEo&biw=1440&bih=789&dpr=2#rlfi=hd:;si:;mv:[[47.7632349,-121.9807255],[47.4698746,-122.3527488]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:1") {
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
