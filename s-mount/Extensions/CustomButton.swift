import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderShadowColor: UIColor = UIColor.clear {
        didSet {
            self.layer.shadowColor = borderShadowColor.cgColor
        }
    }
    
    @IBInspectable var borderShadowOffset: CGSize = CGSize(width: 0, height: 0) {
        didSet {
            self.layer.shadowOffset = borderShadowOffset
        }
    }
    
    @IBInspectable var borderShadowOpacity: Float = 1.0 {
        didSet {
            self.layer.shadowOpacity = borderShadowOpacity
        }
    }
    
    @IBInspectable var borderShadowRadius: CGFloat = 1.0 {
        didSet {
            self.layer.shadowRadius = borderShadowRadius
        }
    }
    
    @IBInspectable var borderShadowMasksToBounds: Bool = true {
        didSet {
            self.layer.masksToBounds = borderShadowMasksToBounds
        }
    }
}
