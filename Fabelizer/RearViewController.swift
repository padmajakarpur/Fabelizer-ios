//
//  RearViewController.swift
//  Fabelizer
//
//  Created by Infinitum on 04/10/18.
//  Copyright © 2018 . All rights reserved.
//

import UIKit
class RearViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

   
    var myArray : NSMutableArray = ["Home","Benchmark","Media","Skin Feature","Language","Profile","Downloaded","Logout"]
    
    var iconarr:Array=[UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view .setGardientBackGround(colourOne: .blue, colourTwo: .white)
        iconarr=[UIImage(named: "home")!,UIImage(named: "bench")!,UIImage(named: "media")!,UIImage(named: "skin")!,UIImage(named: "lang")!,UIImage(named: "prof")!,UIImage(named: "download")!,UIImage(named: "logout")!]
    
        // Do any additional setup after loading the view.
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  myArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell=tableView.dequeueReusableCell(withIdentifier: "RearTableViewCell") as!RearTableViewCell
        cell.tittlelbl.text=myArray[indexPath.row] as? String
        cell.iconImgView.image=iconarr[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealviewController:SWRevealViewController=self.revealViewController()
        let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

        if indexPath.row == 6 {
             let Homeview = mainStoryboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            let newFrontviewController = UINavigationController.init(rootViewController:Homeview)
            revealviewController.pushFrontViewController(newFrontviewController, animated: true)
        }
        else
        {
            let Homeview = mainStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            let newFrontviewController = UINavigationController.init(rootViewController:Homeview)
            revealviewController.pushFrontViewController(newFrontviewController, animated: true)
        }
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
