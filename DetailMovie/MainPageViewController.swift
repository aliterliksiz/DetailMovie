//
//  MainPageViewController.swift
//  DetailMovie
//
//  Created by Ali Terliksiz on 3.04.2023.
//

import UIKit

class MainPageViewController: UIViewController {

    @IBAction func detailButton(_ sender: Any) {
        let storyboard = UIStoryboard.main
        let viewController = storyboard.instantiateViewController(withIdentifier: "detailViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}

extension UIStoryboard{
    static var main: UIStoryboard{
        return UIStoryboard(name: "Main", bundle: .main)
    }
}

