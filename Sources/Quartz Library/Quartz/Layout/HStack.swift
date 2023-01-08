import QuartzCore 
 
import UIKit

public enum HStackType {
    case equalSpacing
    case pushLeft
    case pushRight
    case manual
}
public class HStack : UIStackView {
    public var views = [UIView]()
    public var type : HStackType = .equalSpacing
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    public init(
        type : HStackType,
        
        _width: CGFloat? = nil,
        _height: CGFloat? = nil,
        views : [UIView]
    ) {
        super.init(frame: .zero)
        
   
        
        self.views = views
        self.type = type
        self.distribution = .fillProportionally
        self.axis = .horizontal
        self.alignment = .center
        self.spacing = 0
        
        self.tag = 204
        
        
            
        
        
            
           
        
            
            
        
        
        
        
        
    }
    override public func layoutSubviews() {
        self.setState()
    }
    public func setState() {
        
        if self.frame != .zero {
            
        
        for arrangedSubView in self.arrangedSubviews {
            self.removeArrangedSubview(arrangedSubView)
        }
        
            for view in self.views {
                view.layer.borderWidth = 1
            }
        print(self.views.count)
            
        switch type {
            //MARK: -
        case .equalSpacing:
            var sizedBoxWidth = self.HStackGetSizedBox(views: self.views)
        
            print("SizedBox Width: \(sizedBoxWidth)")
            
            for index in 0...views.count - 1 {
                
                self.addArrangedSubview(SizedBox(_width: sizedBoxWidth, _height: self.frame.height))
                
                self.addArrangedSubview(views[index])
            }
            self.addArrangedSubview(SizedBox(_width: sizedBoxWidth,_height: self.frame.height))
            //MARK: -
        case .pushLeft:
            var sizedBoxWidth = self.HStackGetPushWidth(views: self.views)
            for index in 0...views.count - 1 {
              
                self.addArrangedSubview(views[index])
                
            }
            self.addArrangedSubview(SizedBox(_width: sizedBoxWidth, _height: self.frame.height))
            //MARK: -
        case .pushRight:
            
            var sizedBoxWidth = self.HStackGetPushWidth(views: self.views)
            
            self.addArrangedSubview(SizedBox(_width: sizedBoxWidth, _height: self.frame.height))
            
            for index in 0...views.count - 1 {
              
                self.addArrangedSubview(views[index])
                
            }
         
        case .manual:
          
            
            var spaceCountEven = false
            var spacerCounter = 0
            for index in 0...views.count - 1 {
                if  self.getViewType(view: views[index]) == .Spacer {
                    spacerCounter = spacerCounter + 1
                }
            }
            var newViews = [UIView]()
            for index in 0...self.views.count - 1 {
                if self.getViewType(view: self.views[index]) != .Spacer {
                    newViews.append(self.views[index])
                } else {
                    
                }
               
            }
           
            
            var sizedBoxWidth = self.HStackGetSizedBoxManual(views: newViews, spacerCount: spacerCounter)
      
            

            for index in 0...views.count - 1 {
                if self.getViewType(view: self.views[index]) != .Spacer {
                    self.addArrangedSubview(views[index])
                } else {
                    self.addArrangedSubview(SizedBox(_width: sizedBoxWidth, _height: self.frame.height))
                }
              
                
            }
            
            
           
       
            
        }
            
        }
       
      
        
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
