//
//  MovieDetailViewController.swift
//  DetailMovie
//
//  Created by Ali Terliksiz on 3.04.2023.
//

import Foundation
import UIKit
protocol DetailViewInterface: AnyObject{
        /*The protocol is declared with the AnyObject constraint to make it class-only, which is necessary for weak references to the view controller. The view controller can conform to this protocol and implement these methods to update its user interface in response to changes in the presenter or user interactions.
        */
    func setTitle(_ title: String)
    func setPosterImage(_ image: UIImage?)
    func setMovieName(_ name: String)
    func setDuration(_ duration: String)
    func setImdbRating(_ rating: String)
    func setSynopsis(_ synopsis: String)
}



final class MovieDetailViewController: UIViewController {
    @IBOutlet private weak var movieDetailImageView: UIImageView!
    @IBOutlet private weak var movieNameLabel: UILabel!
    @IBOutlet private weak var synopsisTextField: UILabel!
    @IBOutlet private weak var synopsis: UILabel!
    @IBOutlet private weak var lineImageView: UIImageView!
    @IBOutlet private weak var durationIcon: UIImageView!
    @IBOutlet private weak var durationLabel: UILabel!
    @IBOutlet private weak var IMDBIcon: UIImageView!
    @IBOutlet private weak var IMDBLabel: UILabel!
    @IBOutlet private weak var likeButton: UIButton!
    @IBOutlet private weak var playButton: UIButton!
    var presenter: DetailPresenterInterface!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        /*
        movieDetailImageView.image = UIImage(named: "DetailImageView")
        playButton.setImage(UIImage(named: "PlayButtonImage"), for: .normal)
        likeButton.setImage(UIImage(named: "LikeButtonImage"), for: .normal)
        self.navigationItem.title = "Star Wars: The Last Jedi"
        movieNameLabel.text = "Star Wars: The Last Jedi"
        durationIcon.image = UIImage(named: "Clock")
        durationLabel.text = "152 minutes"
        IMDBIcon.image = UIImage(named: "Star")
        IMDBLabel.text = "7.0"
        lineImageView.image = UIImage(named: "Cubuk")
        synopsis.text = "Synopsis"
        synopsisTextField.text = "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finney (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura."
         */
    }
    
}

extension MovieDetailViewController: DetailViewInterface {
    func setTitle(_ title: String) {
        self.title = title
    }
    
    func setPosterImage(_ image: UIImage?) {
        self.movieDetailImageView.image = image
    }
    
    func setMovieName(_ name: String) {
        self.movieNameLabel.text = name
        self.movieNameLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
    }
    
    func setSynopsis(_ synopsis: String) {
        self.synopsis.text = synopsis
    }
    
    func setDuration(_ duration: String) {
        self.durationLabel.text = duration
    }
    
    func setImdbRating(_ rating: String) {
        self.IMDBLabel.text = rating
    }
}

