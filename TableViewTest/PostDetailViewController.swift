//
//  PostDetailViewController.swift
//  TableViewTest
//
//  Created by Jeff Gayle on 6/5/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

import UIKit

protocol PostDetailViewControllerDelegate {
    func updatedPost()
}

class PostDetailViewController: UIViewController {
    
    @IBOutlet var nameTextField : UITextField = nil
    @IBOutlet var titleTextField : UITextField = nil
    @IBOutlet var contentTextField : UITextField = nil
    
    var additionalPost = Post()
    
    var delegate : PostDetailViewControllerDelegate!
    
    override func viewWillAppear(animated: Bool) {
        
        self.nameTextField.text = self.additionalPost.name
        self.titleTextField.text = self.additionalPost.title
        self.contentTextField.text = self.additionalPost.content
    }
    
    

    @IBAction func cancelButton(sender : UIBarButtonItem) {
        self.delegate.updatedPost()
    }
    
    @IBAction func postUpdated(sender : UIBarButtonItem) {
        if ((countElements(self.additionalPost.name) > 0) && (countElements(self.additionalPost.title) > 0) && (countElements(self.additionalPost.content) > 0)) {
            self.additionalPost.name = self.nameTextField.text
            self.additionalPost.title = self.titleTextField.text
            self.additionalPost.content = self.contentTextField.text
        }
        self.delegate.updatedPost()
    }
    
    
    

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
