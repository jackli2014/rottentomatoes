//
//  ViewController.swift
//  RottenTomatoes
//
//  Created by Shengjun Li on 2/4/15.
//  Copyright (c) 2015 Shengjun Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var movies = NSArray()
    var moviesData = NSDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        tableView.dataSource=self
        tableView.delegate = self
        
        
        
        var url = NSURL(string: "http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/top_rentals.json?apikey=dagqdghwaq3e3mxyrp7kmmj5&limit=20&country=us")!
        
        var request = NSURLRequest(URL: url)
     
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            
            var responseDictionary = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as NSDictionary
            
          
        
            self.movies = responseDictionary["movies"] as NSArray
            
            self.tableView.reloadData()
            
            
            
          // println("response: \(self.movies)")
            
            
            
            println(self.movies.count)
            
             self.moviesData = responseDictionary
            
            
        }
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("movieCell") as MovieViewCell
        
        //var cell = UITableViewCell()
        println(indexPath.row)
        let json = JSON(moviesData["movies"]!)
        // println(json)
        println(json[indexPath.row] )
        //println (movies[indexPath.row])
        
        
        // println (movies[indexPath.row])

        
      //  cell.textLabel?.text = NSString(format: "section %ld, row %ld, title %s ", indexPath.section, indexPath.row)
        
        cell.titleLabel?.text = json[indexPath.row]["title"].string
        cell.synopsisText?.text = json[indexPath.row]["synopsis"].string
        //cell.textLabel?.text = json[indexPath.row]["title"].string
        return cell
    }
    
   


}

