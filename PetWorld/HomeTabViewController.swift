//
//  HomeTabViewController.swift
//  PetWorld
//
//  Created by my mac on 7/31/17.
//  Copyright © 2017 GangsterSwagMuffins. All rights reserved.
//

import UIKit

class HomeTabViewController: UITabBarController, UITabBarControllerDelegate {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
//        if let viewControllers = self.viewControllers{
//            for viewController in viewControllers{
//                if viewController is PostsViewController{
//                    let viewController = viewController as! PostsViewController
//                    viewController.exitedCallback = {
//                        self.selectedViewController = viewControllers[0]
//                    }
//                }
//            }
//        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        print("shouldSelect()")
        if viewController is PostsViewController{
            self.performSegue(withIdentifier: "PostMediaTabSegue", sender: nil)
            
            return false
        }
        
        return true
        
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}