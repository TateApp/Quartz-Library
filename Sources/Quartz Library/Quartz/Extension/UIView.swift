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
        } else if view.tag == 101 {
            return .Button
        }
        
        //MARK: -
        else if view.tag == 200 {
            return .Spacer
        } else if view.tag == 201 {
            return .SizedBox
        } else if view.tag == 202 {
            return .HStack
        }
        else if view.tag == 203 {
            return .VStack
        } else {
            return .View
        }
        
    }
    
    public func VStackGetSizedBox(views: [UIView], height: CGFloat) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewHeight = height
                
                var ViewsHeight : CGFloat = 0
               
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsHeight = ViewsHeight + view._height
                    case .Button:
                        let view = views[index] as! Button
                         ViewsHeight = ViewsHeight + view._height
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                    
                    case .HStack:
                        let view = views[index] as! HStack
                         ViewsHeight = ViewsHeight + view._height
                       
                    case .VStack:
                        let view = views[index] as! VStack
                         ViewsHeight = ViewsHeight + view._height
                    }
                    
                }
               
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
                
               
                
                var superViewHeightDone = (superViewHeight - ViewsHeight)
                if spacerCounter != 0 {
                    numberOfViews = numberOfViews + 1
                }
                var superViewHeightFinal = superViewHeightDone / CGFloat(numberOfViews + 1)
                
               
                
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
               
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsHeight = ViewsHeight + view._height
                    case .Button:
                        let view = views[index] as! Button
                         ViewsHeight = ViewsHeight + view._height
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                
                    case .HStack:
                        let view = views[index] as! HStack
                         ViewsHeight = ViewsHeight + view._height
                    case .VStack:
                        let view = views[index] as! VStack
                         ViewsHeight = ViewsHeight + view._height

                    }
                    
                }
               
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
              
                
                var superViewHeightDone = (superViewHeight - ViewsHeight)
                if spacerCounter == 0 {
                    numberOfViews = numberOfViews + 1
                }
                
                var superViewHeightFinal = superViewHeightDone / CGFloat(spacerCount)
                
                
                
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
               
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsHeight = ViewsHeight + view._height
                    case .Button:
                        let view = views[index] as! Button
                         ViewsHeight = ViewsHeight + view._height
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                   
                    case .HStack:
                        let view = views[index] as! HStack
                         ViewsHeight = ViewsHeight + view._height
                    case .VStack:
                        let view = views[index] as! VStack
                         ViewsHeight = ViewsHeight + view._height
                    }
                    
                }
                
                
                var superViewHeightDone = (superViewHeight - ViewsHeight)
               
                
                return superViewHeightDone
            }
           
            
        }
        
        return 0
    }
    
    public func HStackGetSizedBox(views: [UIView], width: CGFloat) -> CGFloat {
        
        if self.frame != .zero {
            
            if let superView = self.superview {
                
                var superViewWidth = superView.frame.width
                
                var ViewsWidth : CGFloat = 0
               
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsWidth = ViewsWidth + view._width
                    case .Button:
                       let view = views[index] as! Button
                        ViewsWidth = ViewsWidth + view._width
                        
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                    case .HStack:
                        let view = views[index] as! HStack
                         ViewsWidth = ViewsWidth + view._width
                    case .VStack:
                        let view = views[index] as! VStack
                         ViewsWidth = ViewsWidth + view._width
                    }
                    
                }
               
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
              
                var superViewWidthDone = (superViewWidth - ViewsWidth)
                
                if spacerCounter == 0 {
                    numberOfViews = numberOfViews + 1
                }
                var superViewWidthFinal = superViewWidthDone / CGFloat(numberOfViews)
                
               
                    
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
                
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                       let view = views[index] as! View
                        ViewsWidth = ViewsWidth + view._width
                    case .Button:
                        let view = views[index] as! Button
                         ViewsWidth = ViewsWidth + view._width
                    case .SizedBox:
                         break
                    case .Spacer:
                        break
                  
                    case .HStack:
                        let view = views[index] as! HStack
                         ViewsWidth = ViewsWidth + view._width
                    case .VStack:
                        let view = views[index] as! VStack
                         ViewsWidth = ViewsWidth + view._width
                    }
                    
                }
               
          
                var spacerCounter = 0
                var numberOfViews = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    } else {
                        numberOfViews = numberOfViews + 1
                    }
                }
              
                var superViewWidthDone = (superViewWidth - ViewsWidth)
                if spacerCounter != 0 {
                    numberOfViews = numberOfViews + 1
                }
                
                var superViewWidthFinal = superViewWidthDone / CGFloat(spacerCount)
                
              
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
                
              
                for index in 0...views.count - 1 {
                    
                    switch getViewType(view: views[index]) {
                        
                    case .View:
                        
                       let view = views[index] as! View
                        
                        ViewsWidth = ViewsWidth + view._width
                        
                    case .Button:
                       let view = views[index] as! Button
                        
                        ViewsWidth = ViewsWidth + view._width
                        
                    case .SizedBox:
                        
                        let view = views[index] as! SizedBox
                         
                         ViewsWidth = ViewsWidth + view._width
                        
                    case .Spacer:
                        
                        break
                        
                    case .HStack:
                        let view = views[index] as! HStack
                         
                         ViewsWidth = ViewsWidth + view._width
                    case .VStack:
                        let view = views[index] as! VStack
                         
                         ViewsWidth = ViewsWidth + view._width
                    }
                    
                }
               
                var superViewWidthDone = (superViewWidth - ViewsWidth)
               
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
                
            case .Button:
               let view = views[index] as! Button
                ViewsWidth = ViewsWidth + view._width
            case .SizedBox:
                 break
            case .Spacer:
                break
            case .HStack:
                let view = views[index] as! HStack
                 ViewsWidth = ViewsWidth + view._width
            case .VStack:
                let view = views[index] as! VStack
                 ViewsWidth = ViewsWidth + view._width
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
            case .Button:
                let view = views[index] as! Button
                 ViewsHeight = ViewsHeight + view._height
            case .SizedBox:
                 break
            case .Spacer:
                break
         
            case .HStack:
                let view = views[index] as! HStack
                 ViewsHeight = ViewsHeight + view._height
            case .VStack:
                let view = views[index] as! VStack
                 ViewsHeight = ViewsHeight + view._height
            }
            
        }
        
        return ViewsHeight
    }
    
    public func getHeight(views: [UIView]) -> CGFloat {
        
        var height: CGFloat = 0
        if views.count != 0 {
            for index in 0...views.count - 1 {
                switch getViewType(view: views[index]) {
                    
                case .View:
                    let view = views[index] as! View
                    
                    
                        height = height + view._height
                    
                case .Button:
                    let view = views[index] as! Button
                    
                    
                        height = height + view._height
                    
                case .SizedBox:
    //                let view = views[index] as! SizedBox
    //
    //                if view._height > height {
    //                    height = height + view._height
    //                }
                    break
                case .Spacer:
                    break
                case .HStack:
                    let view = views[index] as! HStack
                    
                    
                        height = height + view._height
                    
                case .VStack:
                    let view = views[index] as! VStack
                    
                    
                        height = height + view._height
                    
                }
            }
        }

        return height
    }
    
    public func getWidth(views: [UIView]) -> CGFloat {
        
        var width: CGFloat = 0
        
        if views.count != 0 {
            for index in 0...views.count - 1 {
                
                switch getViewType(view: views[index]) {
                    
                case .View:
                    let view = views[index] as! View
                    
                    
                        width = width + view._width
                    
                case .Button:
                    let view = views[index] as! Button
                    
                    
                        width = width + view._width
                    
                case .SizedBox:
    //                let view = views[index] as! SizedBox
    //
    //                if view._width > width {
    //                    width = width + view._width
    //                }
                    break
                case .Spacer:
                    break
                case .HStack:
                    let view = views[index] as! HStack
                    
                    
                        width = width + view._width
                    
                case .VStack:
                    let view = views[index] as! VStack
                    
                    
                        width = width + view._width
                    
                }
            }
        }
        
        
        return width
    }
}
