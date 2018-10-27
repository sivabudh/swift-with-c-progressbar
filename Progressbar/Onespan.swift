import Foundation
import Libonespan

public final class Onespan {
  public init() {
    print("Inside Onespan initi")
  }
  public func getChannelMessage() -> SecureChannelMessage {
    let s = "Some very long string"
    let param = UnsafeMutablePointer<Int8>(mutating: (s as NSString).utf8String)
    
    var channelMessage = SecureChannelMessage()
    
    print("About to call the method")
    
    // Libonespan.JRCeQEEuFNZPvnlFBBMF(param, &channelMessage)
    
    print("Finished calling the method")

    return channelMessage
  }
}
