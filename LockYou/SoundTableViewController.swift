

import UIKit

class SoundTableViewController: UITableViewController {
    
    @IBOutlet weak var Sound1Get: UIButton!
    @IBAction func Sound1Get(_ sender: UIButton) {
        Sound1Get.isSelected=true
        Sound2Get.isSelected=false
        Sound3Get.isSelected=false
        Sound4Get.isSelected=false
        Sound5Get.isSelected=false
        Sound6Get.isSelected=false
        dataCenter.musicselect[0] = true
        dataCenter.musicselect[1]  = false
        dataCenter.musicselect[2]  = false
        dataCenter.musicselect[3]  = false
        dataCenter.musicselect[4]  = false
        dataCenter.musicselect[5] = false
    }
    
    @IBOutlet weak var Sound2Get: UIButton!
    @IBAction func Sound2Get(_ sender: UIButton){
        Sound1Get.isSelected=false
        Sound2Get.isSelected=true
        Sound3Get.isSelected=false
        Sound4Get.isSelected=false
        Sound5Get.isSelected=false
        Sound6Get.isSelected=false
        dataCenter.musicselect[0] = false
        dataCenter.musicselect[1]  = true
        dataCenter.musicselect[2]  = false
        dataCenter.musicselect[3]  = false
        dataCenter.musicselect[4]  = false
        dataCenter.musicselect[5] = false
    }
    
    @IBOutlet weak var Sound3Get: UIButton!
    @IBAction func Sound3Get(_ sender: UIButton) {
        Sound1Get.isSelected=false
        Sound2Get.isSelected=false
        Sound3Get.isSelected=true
        Sound4Get.isSelected=false
        Sound5Get.isSelected=false
        Sound6Get.isSelected=false
        dataCenter.musicselect[0] = false
        dataCenter.musicselect[1]  = false
        dataCenter.musicselect[2]  = true
        dataCenter.musicselect[3]  = false
        dataCenter.musicselect[4]  = false
        dataCenter.musicselect[5] = false
    }
    
    @IBOutlet weak var Sound4Get: UIButton!
    @IBAction func Sound4Get(_ sender: UIButton) {
        Sound1Get.isSelected=false
        Sound2Get.isSelected=false
        Sound3Get.isSelected=false
        Sound4Get.isSelected=true
        Sound5Get.isSelected=false
        Sound6Get.isSelected=false
        dataCenter.musicselect[0] = false
        dataCenter.musicselect[1]  = false
        dataCenter.musicselect[2]  = false
        dataCenter.musicselect[3]  = true
        dataCenter.musicselect[4]  = false
        dataCenter.musicselect[5] = false
    }
    
    @IBOutlet weak var Sound5Get: UIButton!
    @IBAction func Sound5Get(_ sender: UIButton) {
        Sound1Get.isSelected=false
        Sound2Get.isSelected=false
        Sound3Get.isSelected=false
        Sound4Get.isSelected=false
        Sound5Get.isSelected=true
        Sound6Get.isSelected=false
        dataCenter.musicselect[0] = false
        dataCenter.musicselect[1]  = false
        dataCenter.musicselect[2]  = false
        dataCenter.musicselect[3]  = false
        dataCenter.musicselect[4]  = true
        dataCenter.musicselect[5] = false
    }
    
    @IBOutlet weak var Sound6Get: UIButton!
    @IBAction func Sound6Get(_ sender: UIButton) {
        Sound1Get.isSelected=false
        Sound2Get.isSelected=false
        Sound3Get.isSelected=false
        Sound4Get.isSelected=false
        Sound5Get.isSelected=false
        Sound6Get.isSelected=true
        dataCenter.musicselect[0] = false
        dataCenter.musicselect[1]  = false
        dataCenter.musicselect[2]  = false
        dataCenter.musicselect[3]  = false
        dataCenter.musicselect[4]  = false
        dataCenter.musicselect[5] = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (!dataCenter.musicselect[0]){
            Sound1Get.isSelected = false
        } else {
            Sound1Get.isSelected = true
        }
        if (!dataCenter.musicselect[1]){
            Sound2Get.isSelected = false
        } else {
            Sound2Get.isSelected = true
        }
        if (!dataCenter.musicselect[2]){
            Sound3Get.isSelected = false
        } else {
            Sound3Get.isSelected = true
        }
        if (!dataCenter.musicselect[3]){
            Sound4Get.isSelected = false
        } else {
            Sound4Get.isSelected = true
        }
        if (!dataCenter.musicselect[4]){
            Sound5Get.isSelected = false
        } else {
            Sound5Get.isSelected = true
        }
        if (!dataCenter.musicselect[5]){
            Sound6Get.isSelected = false
        } else {
            Sound6Get.isSelected = true
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationSound.rightBarButtonSound = self.editButtonSound()
    }
    
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    //
    //    // MARK: - Table view data source
    //
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 0
    //    }
    //
    //    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        // #warning Incomplete implementation, return the number of rows
    //        return 0
    //    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified Sound to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
     // Return false if you do not want the Sound to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
