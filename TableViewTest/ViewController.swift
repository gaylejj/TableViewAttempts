//
//  ViewController.swift
//  TableViewTest
//
//  Created by Jeff Gayle on 6/4/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PostDetailViewControllerDelegate {
    
    let posts = Post().tenRandomPosts()
    var editPost = Post()
    
    @IBOutlet var tableView : UITableView
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as TableViewCell
        
        var singlePost : Post
        
        singlePost = posts[indexPath.row]
                
        cell.nameLabel.text = singlePost.name
        cell.titleLabel.text = singlePost.title
        cell.contentLabel.text = singlePost.content
        
        return cell
    }
    
    func tableView(tableView: UITableView!,
        didSelectRowAtIndexPath indexPath: NSIndexPath!) {
            
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        editPost = posts[indexPath.row]
        println("\(editPost.name) name")
        self.performSegueWithIdentifier("Edit", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        let addVC : PostDetailViewController = segue.destinationViewController as PostDetailViewController
        
        if (segue.identifier == "Edit") {
            addVC.additionalPost = editPost
            println("\(addVC.additionalPost.name)")
        } else if (segue.identifier == "Add") {
            var newPost = Post()
            newPost.name = "Jeff"
            newPost.title = "Test"
            addVC.additionalPost = newPost
        }
        
        println("Selected \(addVC.additionalPost.name)")
    }
    
    func updatedPost() {
        self.navigationController.popViewControllerAnimated(true)
        self.tableView.reloadData()
    }


}

