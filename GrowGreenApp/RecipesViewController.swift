//
//  RecipesViewController.swift
//  GrowGreenApp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class RecipesViewController: UIViewController {
    
    @IBOutlet weak var openBasilRecipe: UIButton!
    @IBOutlet weak var openRosemaryRecipe: UIButton!
    @IBOutlet weak var openSpringOnionRecipe: UIButton!
    @IBOutlet weak var openPepperRecipe: UIButton!
    @IBOutlet weak var openCucumberRecipe: UIButton!
    @IBOutlet weak var openLettuceRecipe: UIButton!
    @IBOutlet weak var openCherryTomatoRecipe: UIButton!
    @IBOutlet weak var openMintRecipe: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        openBasilRecipe.addTarget(self, action: #selector(openBasil), for: .touchUpInside)
        openRosemaryRecipe.addTarget(self, action: #selector(openRosemary), for: .touchUpInside)
        openSpringOnionRecipe.addTarget(self, action: #selector(openSpringOnion), for: .touchUpInside)
        openPepperRecipe.addTarget(self, action: #selector(openPepper), for: .touchUpInside)
        openCucumberRecipe.addTarget(self, action: #selector(openCucumber), for: .touchUpInside)
        openLettuceRecipe.addTarget(self, action: #selector(openLettuce), for: .touchUpInside)
        openCherryTomatoRecipe.addTarget(self, action: #selector(openCherryTomato), for: .touchUpInside)
        openMintRecipe.addTarget(self, action: #selector(openMint), for: .touchUpInside)
    }
    
    @objc func openBasil () {
        if let urlToOpen = URL (string: "https://bakerbynature.com/one-pan-tomato-basil-pasta/") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    @objc func openRosemary () {
        if let urlToOpen = URL (string: "https://food52.com/recipes/49653-lemon-rosemary-muffins") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    @objc func openSpringOnion () {
        if let urlToOpen = URL (string: "https://www.rabbitandwolves.com/vegan-spring-onion-soup/") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    @objc func openPepper () {
        if let urlToOpen = URL (string: "https://www.vegrecipesofindia.com/mirchi-bajji-recip/") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    @objc func openCucumber () {
        if let urlToOpen = URL (string: "https://www.soscuisine.com/recipe/lettuce-cucumber-tomato-salad") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    
    @objc func openLettuce () {
        if let urlToOpen = URL (string: "https://www.wellplated.com/vegetarian-lettuce-wraps/") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    @objc func openCherryTomato () {
        if let urlToOpen = URL (string: "https://www.epicurious.com/recipes/food/views/pasta-with-15-minute-burst-cherry-tomato-sauce-56390060") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }
    
    @objc func openMint () {
        if let urlToOpen = URL (string: "https://www.thespruceeats.com/easy-fresh-mint-tea-recipe-766391") {
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
    
        }
        
            
    }

    
    
    
    
    
    

}
