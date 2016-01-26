//
//  ViewController.swift
//  Twipper
//
//  Created by Ramyatha Yugendernath on 1/24/16.
//  Copyright © 2016 Ramyatha Yugendernath. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var tweets = [
        Tweet(tweetText: "tweet one", userName: "userOne", createdAt: "Wed May 06", pictureURL: NSURL(string:"http://lorempixel.com/200/200/")),
        Tweet(tweetText: "tweet two", userName: "userTwo", createdAt: "Wed May 06", pictureURL: NSURL(string: "http://lorempixel.com/201/201/")),
        Tweet(tweetText: "tweet three", userName: "userTwo", createdAt: "Wed May 06", pictureURL: NSURL(string: "http://lorempixel.com/202/202/")),
        Tweet(tweetText: "tweet four", userName: "userThree", createdAt: "Wed May 06", pictureURL: NSURL(string: "http://lorempixel.com/203/203/"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tweet0 = Tweet(tweetText: "tweet one", userName: "userOne", createdAt: "Wed May 06", pictureURL: NSURL(string:"http://lorempixel.com/200/200/"))
        print("Tweet0 is \(tweet0.tweetText)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TweetCell") as! TweetCell
        let tweet = tweets[indexPath.row]
        cell.tweetTextLabel.text = tweet.tweetText!
        cell.userNameLabel.text = tweet.userName!
        cell.createdAtLabel.text = tweet.createdAt!
        if tweet.pictureURL != nil {
            if let imageData = NSData(contentsOfURL: tweet.pictureURL!) {
                cell.pictureImageView.image = UIImage(data: imageData)
            }
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120
    }
    

}

