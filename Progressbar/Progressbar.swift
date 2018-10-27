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
