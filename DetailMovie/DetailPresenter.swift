import Foundation
import UIKit
protocol DetailPresenterInterface{
    func viewDidLoad()
}

final class DetailPresenter{
    private weak var view: DetailViewInterface?
    init(view: DetailViewInterface){
        self.view = view
    }
}

extension DetailPresenter: DetailPresenterInterface {
    func viewDidLoad() {
        // Fetch movie details and update the view
        view?.setTitle("Star Wars: The Last Jedi")
        view?.setPosterImage(UIImage(named: "DetailImageView"))
        view?.setMovieName("Star Wars: The Last Jedi")
        view?.setDuration("152 minutes")
        view?.setImdbRating("7.0")
        view?.setSynopsis("Synopsis")
    }
    
    
    
    
}

