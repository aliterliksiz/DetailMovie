//
//  ViewController.swift
//  DetailMovie
//
//  Created by Ali Terliksiz on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var synopsis: UILabel!
    @IBOutlet weak var synopsisTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        synopsis.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
        movieName.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
    }


}

