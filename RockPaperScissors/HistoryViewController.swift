//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Safeen Azad on 8/12/17.
//  Copyright © 2017 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var history = [RPSMatch]()
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "data", for: indexPath)
        
        let match = self.history[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = victoryStatusDiscription(match)
        cell.detailTextLabel!.text = "\(match.p1) vs. \(match.p2)"
        return cell
    }
    func victoryStatusDiscription(_ match: RPSMatch) -> String {
        if match.p1 == match.p2 {
            return "Tie."
        }else if match.p1.defeats(match.p2){
            return "Win."
        }else{
        return "Loss."
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
