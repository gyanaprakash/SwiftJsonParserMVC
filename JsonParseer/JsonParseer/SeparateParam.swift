//
//  SeparateParam.swift
//  JsonParseer
//
//  Created by Gyana Prakash on 9/17/17.
//  Copyright © 2017 gyana prakash. All rights reserved.
//

import UIKit

class SeparateParam: NSObject {

    func sepearteParameterForMethod(methodName : URLTYPE, parameters : AnyObject) -> AnyObject {
        switch (methodName) {
        case .GETDATA :
            return self.returnDataForMethod(parameters: parameters as! [String : AnyObject]) as DataModelClass
        }
    }
    
        private func returnDataForMethod(parameters : [String : AnyObject]!) -> DataModelClass {
            let model = DataModelClass(dictionary: parameters as NSDictionary)
            return model!
        }

}
