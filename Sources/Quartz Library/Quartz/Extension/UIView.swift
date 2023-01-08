import QuartzCore 
import UIKit


extension UIView {
    
    public func max() {
        if let superView = self.superview {
            self.translatesAutoresizingMaskIntoConstraints = false
            
            self.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
            self.leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
            self.trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
            self.bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        }
      
        
    }
    
    public func getViewType(view: UIView) -> ViewType {
        
        if view.tag == 100 {
            return .View
        } else if view.tag == 200 {
            return .Spacer
        } else if view.tag == 201 {
            return .SizedBox
        } else if view.tag == 202 {
            return .SizedBox
        } else {
            return .View
        }
        
    }
    
    public func VStackGetSizedBox(views: [UIView]) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewHeight = superView.frame.height
                
                var ViewsHeight : CGFloat = 0
                print("SuperView Height: \(superViewHeight)")
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsHeight = ViewsHeight + view._height
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                    }
                    
                }
                print("Views Height \(ViewsHeight)")
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
                print("Number Of Views \(numberOfViews)")
                print("Number Of Spacers \(spacerCounter)")
                
                var superViewHeightDone = (superViewHeight - ViewsHeight)
                if spacerCounter != 0 {
                    numberOfViews = numberOfViews + 1
                }
                var superViewHeightFinal = superViewHeightDone / CGFloat(numberOfViews + 1)
                
                print("superViewHeightFinal \(superViewHeightFinal)")
                
                return superViewHeightFinal
            }
           
            
        }
        
        return 0
    }
    public  func VStackGetSizedBoxManual(views: [UIView], spacerCount: Int) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewHeight = superView.frame.height
                
                var ViewsHeight : CGFloat = 0
                print("SuperView Height: \(superViewHeight)")
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsHeight = ViewsHeight + view._height
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                    }
                    
                }
                print("Views Height \(ViewsHeight)")
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
                print("Number Of Views \(numberOfViews)")
                print("Number Of Spacers \(spacerCounter)")
                
                var superViewHeightDone = (superViewHeight - ViewsHeight)
                if spacerCounter == 0 {
                    numberOfViews = numberOfViews + 1
                }
                
                var superViewHeightFinal = superViewHeightDone / CGFloat(spacerCount)
                
                print("superViewHeightFinal \(superViewHeightFinal)")
                
                return superViewHeightFinal
            }
           
            
        }
        
        return 0
    }
    public func VStackGetPushHeight(views: [UIView]) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewHeight = superView.frame.height
                
                var ViewsHeight : CGFloat = 0
                print("SuperView Height: \(superViewHeight)")
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsHeight = ViewsHeight + view._height
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                    }
                    
                }
                print("Views Height \(ViewsHeight)")
                
                var superViewHeightDone = (superViewHeight - ViewsHeight)
                print("superViewHeightDone \(superViewHeightDone)")
                
                return superViewHeightDone
            }
           
            
        }
        
        return 0
    }
    
    public func HStackGetSizedBox(views: [UIView]) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewWidth = superView.frame.width
                
                var ViewsWidth : CGFloat = 0
                print("SuperView Width: \(superViewWidth)")
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsWidth = ViewsWidth + view._width
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                    }
                    
                }
                print("Views Width \(ViewsWidth)")
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
                print("Number Of Views \(numberOfViews)")
                print("Number Of Spacers \(spacerCounter)")
                
                var superViewWidthDone = (superViewWidth - ViewsWidth)
                
                if spacerCounter == 0 {
                    numberOfViews = numberOfViews + 1
                }
                var superViewWidthFinal = superViewWidthDone / CGFloat(numberOfViews)
                
                print("superViewWidthFinal \(superViewWidthFinal)")
                
                return superViewWidthFinal
            }
           
            
        }
        
        return 0
    }
    public func HStackGetSizedBoxManual(views: [UIView], spacerCount: Int) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewWidth = superView.frame.width
                
                var ViewsWidth : CGFloat = 0
                print("SuperView Width: \(superViewWidth)")
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsWidth = ViewsWidth + view._width
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                    }
                    
                }
                print("Views Width \(ViewsWidth)")
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
                print("Number Of Views \(numberOfViews)")
                print("Number Of Spacers \(spacerCounter)")
                
                var superViewWidthDone = (superViewWidth - ViewsWidth)
                if spacerCounter != 0 {
                    numberOfViews = numberOfViews + 1
                }
                
                var superViewWidthFinal = superViewWidthDone / CGFloat(spacerCount)
                
                print("superViewWidthFinal \(superViewWidthFinal)")
                
                return superViewWidthFinal
            }
           
            
        }
        
        return 0
    }
    public func HStackGetPushWidth(views: [UIView]) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewWidth = superView.frame.width
                
                var ViewsWidth : CGFloat = 0
                
                print("SuperView Width: \(superViewWidth)")
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                        
                       let view = views[index] as! View
                        
                        ViewsWidth = ViewsWidth + view._width
                        
                    case .SizedBox:
                        
                        let view = views[index] as! SizedBox
                         
                         ViewsWidth = ViewsWidth + view._width
                        
                    case .Spacer:
                        
                        break
                        
                    }
                    
                }
                print("Views Width \(ViewsWidth)")
                
                var superViewWidthDone = (superViewWidth - ViewsWidth)
                print("superViewWidthDone \(superViewWidthDone)")
                
                return superViewWidthDone
            }
           
            
        }
        
        return 0
    }
        

    public func getViewWidth(views: [UIView]) -> CGFloat {
        var ViewsWidth : CGFloat = 0
        
        
        for index in 0...views.count - 1 {
            
            switch getViewType(view: views[index]) {
                
            case .View:
               let view = views[index] as! View
                ViewsWidth = ViewsWidth + view._width
            case .SizedBox:
                 break
            case .Spacer:
                break
            }
            
        }
        
        return ViewsWidth
        
    }
    public func getViewHeight(views: [UIView]) -> CGFloat {
        
        var ViewsHeight : CGFloat = 0
        
        
        for index in 0...views.count - 1 {
            
            switch getViewType(view: views[index]) {
                
            case .View:
               let view = views[index] as! View
                ViewsHeight = ViewsHeight + view._height
            case .SizedBox:
                 break
            case .Spacer:
                break
            }
            
        }
        
        return ViewsHeight
    }
    
    
}
