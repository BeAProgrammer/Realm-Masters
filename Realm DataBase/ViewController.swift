//
//  ViewController.swift
//  Realm DataBase
//
//  Created by Mac on 26/11/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit
import RealmSwift
class ViewController: BaseViewController {
    var profileImage : UIImage!
    @IBOutlet weak var txtDob: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var btnAddProfileImg: UIButton!
    let realm = try! Realm()
    
    var objectsArray:Results<item>
    {
        get {
            return realm.objects(item.self)
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.showDatePicker(sender: txtDob)
    }
    //MARK:-DataPicker
    override func getDate(date: String) {
        
        print("DAte::\(date)")
        txtDob.text = date
        self.view.endEditing(true)
    }
    override func viewWillAppear(_ animated: Bool) {
        print(Realm.Configuration.defaultConfiguration.fileURL)
     //   fetchItem()
    }
    //MARK:- AddToDB
    func addItem()
    {
       let addItem = item()
        addItem.name = txtName.text!
        addItem.address = txtAddress.text!
        addItem.dateOfBirth = txtDob.text!
        if (self.profileImage != nil)
        {
            addItem.profileImg = UIImageJPEGRepresentation(self.profileImage!, 0)
        }
        else
        {
            let img = #imageLiteral(resourceName: "ProfileIcon")
            addItem.profileImg = UIImageJPEGRepresentation(img, 0)

        }
        try! self.realm.write {
            self.realm.add(addItem)
        }
        fetchItem()
        
    }
    func fetchItem()
    {
        print("Object Array:::\(objectsArray[0].name)")
    }
    @IBAction func addProfileImage(_ sender: Any)
    {
        self.addButtonTappedForProfile(sender: sender as AnyObject)
    }
    override func getImage(image: UIImage) {
        
        self.btnAddProfileImg.setImage(image, for: .normal)
        self.profileImage = image
        print("Done")
        
    }
    @IBAction func submitAction(_ sender: Any)
    {
        self.addItem()
    }
}

