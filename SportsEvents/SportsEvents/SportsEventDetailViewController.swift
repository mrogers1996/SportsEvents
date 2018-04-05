//
//  SportsEventDetailViewController.swift
//  SportsEvents
//
//  Created by Mandy Rogers on 4/5/18.
//  Copyright © 2018 Mandy Rogers. All rights reserved.
//

import UIKit

class SportsEventDetailViewController: UIViewController {

    @IBOutlet weak var sportIconImageView: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var sportsEvent: SportsEvent?
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Event"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        sportIconImageView.image = sportsEvent?.sport.image
        matchupLabel.text = sportsEvent?.matchup
        
        if let date = sportsEvent?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
