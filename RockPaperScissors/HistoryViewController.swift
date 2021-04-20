//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by June2020 on 4/19/21.
//  Copyright © 2021 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit
import Foundation

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var history = [RPSMatch]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tempText: String = ""
        // var tempLabel: String = ""
        var st1: String = ""
        var st2: String = ""
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell")!
       // cell.textLabel?.text = history[indexPath.row].description
        if history[indexPath.row].p1 == history[indexPath.row].p2 {
            tempText = "Tie"
        }
        else if history[indexPath.row].winner == history[indexPath.row].p1 {
            tempText = "Win"
        } else {
            tempText = "Lose"
        }
        cell.textLabel?.text = tempText
        st1 = history[indexPath.row].p1.description
        st2 = history[indexPath.row].p2.description
        cell.detailTextLabel?.text = "\(st1) vs \(st2)"
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeWindow(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
