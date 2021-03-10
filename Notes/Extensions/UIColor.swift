
import UIKit

extension UIColor {
    var image: UIImage? {
        get {
            let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
            UIGraphicsBeginImageContext(rect.size)
            guard let context = UIGraphicsGetCurrentContext() else {
                return nil
            }
            context.setFillColor(cgColor)
            context.fill(rect)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return image
            
        }
    }
}
