//
//  Post.swift
//  TableViewTest
//
//  Created by Jeff Gayle on 6/4/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

import UIKit

class Post: NSObject {
    var name = String()
    var title = String()
    var content = String()
    
    func initWithPost(name : String, title : String, content : String) -> Post {
        var post = Post ()
        post.name = name
        post.title = title
        post.content = content
        
        return post
    }
   
    func tenRandomPosts() -> Post [] {
        var posts = Post []()
        var namesArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
        var titlesArray = ["Test 1", "Test 2", "Test 3", "Test 4", "Test 5", "Test 6", "Test 7", "Test 8", "Test 9", "Test 10"]
        var contentsArray = ["New Content 1", "New Content 2", "New Content 3", "New Content 4", "New Content 5", "New Content 6", "New Content 7", "New Content 8", "New Content 9", "New Content 10"]
        
        for i in 0..namesArray.count {
            var post = Post().initWithPost(namesArray[i], title: titlesArray[i], content: contentsArray[i])
            
            posts += post
        }
        return posts
    }
}
