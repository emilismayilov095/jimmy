#if canImport(UIKit)
import Foundation
import UIKit

public struct Jimmy {
    public init() { }
}

extension Jimmy {
    public static func delayAfter(seconds delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }
}

extension Jimmy {
    public static func showAlertWith(title: String, message: String, _ controller: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        controller.present(alert, animated: true, completion: nil)
    }
}
    
#endif
