//
//  HTTPHelper.swift
//  JsonParseer
//
//  Created by Gyana Prakash on 9/17/17.
//  Copyright © 2017 gyana prakash. All rights reserved.
//

import UIKit

class HTTPHelper: NSObject {

    func httpHelperForGetRequest(methodeName : URLTYPE, methodeType : HTTPMethodType, SuccessWith: @escaping (_ data : AnyObject?) -> (), Failure: @escaping (_ error : NSError) -> ()) {
        
        let url = UrlCreator().returnUrlForMethod(methodName: methodeName , param: ["" : ""]) as URL
        URLSession.shared.dataTask(with: url, completionHandler: {
            (data, response, error) in
            if(error != nil){
                Failure(error as! NSError)
            }else{
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : AnyObject]
                    let retVal : AnyObject = SeparateParam().sepearteParameterForMethod(methodName: methodeName, parameters: json as AnyObject)
                        SuccessWith(retVal)
                }catch let error as NSError{
                    Failure(error)
                }
            }
        }).resume()
    }
    
}
