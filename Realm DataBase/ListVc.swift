//
//  ListVc.swift
//  Realm DataBase
//
//  Created by Mac on 27/11/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit
import RealmSwift
class ListVc: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var realm : Realm!
    var profileListArray : Results<item>!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

      //  tableView.register(ListCell.self, forCellReuseIdentifier: "cell")
         realm = try! Realm()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        profileListArray = realm.objects(item.self)
    }
    //MARK:- TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileListArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ListCell
        let person = profileListArray[indexPath.row]
        cell.lblName.text = person.name
        if (person.profileImg != nil)
        {
            cell.imgProfile.image = UIImage(data: person.profileImg!)
        }
        else
        {
            cell.imgProfile.image = UIImage(named: "ProfileIcon")
        }
        cell.lblAddress.text = person.address
        cell.lblDob.text = person.dateOfBirth
        return cell
    }
    

   

}
