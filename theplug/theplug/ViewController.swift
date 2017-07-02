//
//  ViewController.swift
//  theplug
//
//  Created by Reuben Ukah on 2/12/16.
//  Copyright © 2016 theplug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theplugwebpage: UIWebView!
     var URLPath = "http://www.theplugsb.com/"
    
    
    @IBAction func stoploading(sender: AnyObject) {
    theplugwebpage.stopLoading()
    }
    @IBAction func reloadpage(sender: AnyObject) {
        theplugwebpage.reload()
    }
    @IBAction func lastpageforward(sender: AnyObject) {
        theplugwebpage.goBack()
    }
    @IBAction func lastpagebackward(sender: AnyObject) {
         theplugwebpage.goForward()
    
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL (string: URLPath);
        let requestObj = NSURLRequest(URL: url!);
        theplugwebpage.loadRequest(requestObj);
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadAddressURL() {
        let requestURL = NSURL(string:URLPath)
        let request = NSURLRequest(URL: requestURL!)
        theplugwebpage.loadRequest(request)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

