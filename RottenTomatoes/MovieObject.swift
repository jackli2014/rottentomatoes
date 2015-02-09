//
//  MovieObject.swift
//  RottenTomatoes
//
//  Created by Shengjun Li on 2/8/15.
//  Copyright (c) 2015 Shengjun Li. All rights reserved.
//

import Foundation
import UIKit

class MovieObject: NSObject {
    
    var dict: NSDictionary
    
    init(dictionary: NSDictionary) {
        dict = dictionary
    }
    
    var title: NSString {
        get {
            return dict["title"] as NSString
        }
    }
    
    var year: NSNumber {
        get {
            return dict["year"] as NSNumber
        }
    }
    
    var posters: NSDictionary {
        get {
            return dict["posters"] as NSDictionary
        }
    }
    
    
    var ratings: NSDictionary {
        get {
            return dict["ratings"] as NSDictionary
        }
    }
    
    var criticsScore: NSNumber {
        get {
            return self.ratings["critics_score"] as NSNumber
        }
    }
    
    var audienceScore: NSNumber {
        get {
            return self.ratings["audience_score"] as NSNumber
        }
    }
    
    var mpaaRating: NSString {
        get {
            return dict["mpaa_rating"] as NSString
        }
    }
    
    var synopsis: NSString {
        get {
            return dict["synopsis"] as NSString
        }
    }
    
    var thumbnailURL: NSURL {
        get {
            return NSURL(string: (self.posters["detailed"] as NSString).stringByReplacingOccurrencesOfString("tmb", withString: "det"))!
        }
    }
    
    var posterURL: NSURL {
        get {
            return NSURL(string: (self.posters["original"] as NSString).stringByReplacingOccurrencesOfString("tmb", withString: "ori"))!
        }
    }

    
}