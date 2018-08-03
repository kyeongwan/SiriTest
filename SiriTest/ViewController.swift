//
//  ViewController.swift
//  SiriTest
//
//  Created by 강경완 on 2018. 8. 3..
//  Copyright © 2018년 Woowabros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonAction(sender: UIButton) {
        let activity = NSUserActivity(activityType: "com.jawebs.baedal.beta.siri.intentactivity")
        activity.title = "Make View Red"
        activity.userInfo = ["color" : "red"]
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        activity.persistentIdentifier = "com.jawebs.baedal.beta.siri.intentactivity"
        view.userActivity = activity
        activity.becomeCurrent()

    }

    func intentactivity() {
        self.view.backgroundColor = UIColor.red
    }


}


extension NSUserActivity {

    public static let activityName = "com.jawebs.baedal.beta.siri.intentactivity"
}
