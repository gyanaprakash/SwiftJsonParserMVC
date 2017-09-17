//
//  UrlCreator.swift
//  JsonParseer
//
//  Created by Gyana Prakash on 9/17/17.
//  Copyright © 2017 gyana prakash. All rights reserved.
//

import UIKit

class UrlCreator: NSObject {
    
    func returnUrlForMethod(methodName : URLTYPE, param : NSDictionary!) -> NSURL {
        switch (methodName) {
        case .GETDATA :
            return NSURL(string: self.returnUrlForGetDataMethod())!
        }
    }
    
    private func returnUrlForGetDataMethod() -> String {
        return METHOD_GETDATA_URL
    }

}
