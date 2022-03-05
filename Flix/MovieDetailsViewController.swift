//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Maria Hernandez on 3/4/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {
        
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tittleLabel.text = movie["title"] as? String
        
        tittleLabel.sizeToFit()
        
        descriptionLabel.text = movie["overview"] as? String
        descriptionLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af.setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
        
        
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
