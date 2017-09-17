//
//  ViewController.swift
//  JsonParseer
//
//  Created by Gyana Prakash on 9/17/17.
//  Copyright © 2017 gyana prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        HTTPHelper().httpHelperForGetRequest(methodeName: .GETDATA, methodeType: .get, SuccessWith: { (res) in
            let logS : DataModelClass = (res as? DataModelClass)!

            print(logS.base)
            print(logS.weather?[0].main)

        }) { (error) in
            print(error)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

