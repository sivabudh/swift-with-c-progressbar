//
//  Progressbar.swift
//  Progressbar
//
//  Created by Sivabudh Umpudh on 27/10/18.
//  Copyright © 2018 Sivabudh Umpudh. All rights reserved.
//

import Foundation
import Libprogressbar

public final class Progressbar {
  let bar: UnsafeMutablePointer<progressbar>
  
  public init(text: String, max: UInt) {
    let unsafePointer = (text as NSString).utf8String
    bar = Libprogressbar.progressbar_new(unsafePointer, max)
  }
  
  public func increment() {
    Libprogressbar.progressbar_inc(bar)
  }
  
  public func finish() {
    Libprogressbar.progressbar_finish(bar)
  }
}
