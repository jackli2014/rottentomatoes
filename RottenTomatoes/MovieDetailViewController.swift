//
//  MovieDetailViewController.swift
//  RottenTomatoes
//
//  Created by Shengjun Li on 2/8/15.
//  Copyright (c) 2015 Shengjun Li. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var movieObject:MovieObject?

    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var audienceScoreLabel: UILabel!
    @IBOutlet weak var criticsScoreLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = "\(movieObject!.title)"
        yearLabel.text = "\(movieObject!.year)"
        criticsScoreLabel.text = "\(movieObject!.criticsScore)"
        audienceScoreLabel.text = "\(movieObject!.audienceScore)"

        ratingLabel.text =  movieObject!.mpaaRating

        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
