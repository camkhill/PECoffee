//
//  AvailableRoastsViewController.swift
//  pecoffeeapp
//
//  Created by Hill, Cameron on 8/8/17.
//  Copyright © 2017 Positive Energy Coffee. All rights reserved.
//

import UIKit

struct roastData {
    let flagImage : UIImage!
    let roastTitle : String!
    let country : String!
    let tastingNotes : String!
}



class AvailableRoastsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var roastDataArray = [roastData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        roastDataArray = [roastData(flagImage: #imageLiteral(resourceName: "Flag_of_Colombia.svg"), roastTitle: "La Plata Trujillo Microlot", country: "Colombia", tastingNotes: "Honey Suckle | Orange Zest | Muscavado"),
                          roastData(flagImage: #imageLiteral(resourceName: "brazil-flag"), roastTitle: "La Plata Trujillo Microlot", country: "Brazil", tastingNotes: "Honey Suckle | Orange Zest | Muscavado"),
                          roastData(flagImage: #imageLiteral(resourceName: "Flag_of_Colombia.svg"), roastTitle: "La Plata Trujillo Microlot", country: "Colombia", tastingNotes: "Honey Suckle | Orange Zest | Muscavado")]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Build structure of roasts
    //let roastNames = ["Roast 1", "Roast 2", "Roast 3", "Roast 4"]
    
    

    //// BUILD TABLE VIEW ////
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        // Determine number of cells to create
        return roastDataArray.count
        
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let roastCell = Bundle.main.loadNibNamed("AvailableRoastsTableViewCell", owner: self, options: nil)?.first as! AvailableRoastsTableViewCell //AvailableRoastsTableViewCell()
        
        
        roastCell.flagImageView.image = roastDataArray[indexPath.row].flagImage
        roastCell.roastTitleLabel.text = roastDataArray[indexPath.row].roastTitle
        roastCell.countryLabel.text = roastDataArray[indexPath.row].country
        roastCell.tastingNotesLabel.text = roastDataArray[indexPath.row].tastingNotes
        
        
        return roastCell
    }

    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return 245

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
