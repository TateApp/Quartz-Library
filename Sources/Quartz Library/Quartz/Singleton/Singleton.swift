import QuartzCore 
 

import UIKit


enum Mode {
 
    case production
    case developer
}
class Quartz : NSObject {
    
    static let shared = Quartz()
    
    var mode : Mode = .production
    
    
}
