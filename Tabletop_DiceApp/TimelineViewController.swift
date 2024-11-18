//
//  TimelineViewController.swift
//  Tabletop_DiceApp
//
//  Created by James McGinnis on 9/21/24.
//

import UIKit

class TimelineViewController: UITableViewController {

    let timeline: [String] = ["11/20/24: General UI elements rough draft", "11/21/24: Complete UI and code for choosing dice type", "11/22/24: Complete UI and code for rolling dice", "11/24/24: Clean up UI elements", "11/25/24: Test Application and make appropriate modifications", "11/26/24: Create powerpoint to show important information on the app and its functions"]
    
    let respon: [String] = ["Ian: Code, assistence with UI", "Danni: App icon, lockscreen, powerpoint and project review", "Bishara: UI design, experience, and code"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TVCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0: //Timeline rows
            return timeline.count
        case 1: //Responsibilities rows
            return respon.count
        default:
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath)
            
        // Sets the text and detail text based on section
        switch indexPath.section {
        case 0: // Timeline section
            cell.textLabel?.text = timeline[indexPath.row]
        case 1: // Responsibilities section
            cell.textLabel?.text = respon[indexPath.row]
        default:
            break
        }
        
        // Extras
        cell.textLabel?.numberOfLines = 0
        cell.backgroundColor = .systemOrange
        
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: //Timeline title
            return "Timeline"
        default: //Responsibilities title
            return "Responsibilities"
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowPrototype", sender: indexPath)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
