//
//  UrlConstant.swift
//  JsonParseer
//
//  Created by Gyana Prakash on 9/17/17.
//  Copyright © 2017 gyana prakash. All rights reserved.
//


let METHOD_GETDATA_URL = "http://samples.openweathermap.org/data/2.5/weather?id=2172797&appid=b1b15e88fa797225412429c1c50c122a1"


enum URLTYPE {
    case GETDATA

}


public enum HTTPMethodType: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}
