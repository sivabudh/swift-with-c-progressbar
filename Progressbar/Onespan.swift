//
//  Onespan.swift
//  Progressbar
//
//  Created by Sivabudh Umpudh on 27/10/18.
//  Copyright © 2018 Sivabudh Umpudh. All rights reserved.
//

import Foundation
import Libonespan

public final class Onespan {
  public init() {
    var channelMessage = SecureChannelMessage()
    
    let s = "Some very long string"
    let param = UnsafeMutablePointer<Int8>(mutating: (s as NSString).utf8String)
    
    Libonespan.JRCeQEEuFNZPvnlFBBMF(param, &channelMessage)
  }
}
