//
//  ViewController.swift
//  AlertViewSwift
//
//  Created by Rahul on 10/11/14.
//  Copyright (c) 2014 RahulSaini. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate
{
    
    
    @IBOutlet var rateLabel: UILabel!
    
    
    @IBAction func displayActionSheet(sender: UIButton)
    {
        
        let alertView = UIAlertView(title: "Rate",
            message: "", delegate:self, cancelButtonTitle: "Cancel", otherButtonTitles: "Rate 1 Star", "Rate 2 Stars",
            "Rate 3 Starts", "Rate 4 Stars", "Rate 5 Stars");
        alertView.alertViewStyle = .Default
        alertView.show()
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
    {
        switch buttonIndex
        {
        case 1:
            rateLabel.text = "You've rated 1 star.";
            break;
        case 2:
            rateLabel.text = "You've rated 2 stars.";
            break;
        case 3:
            rateLabel.text = "You've rated 3 stars.";
            break;
        case 4:
            rateLabel.text = "You've rated 4 stars.";
            break;
        case 5:
            rateLabel.text = "You've rated 5 stars.";
            break;
        default:
            rateLabel.text = "You haven't rate this app yet.";
            break;
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

