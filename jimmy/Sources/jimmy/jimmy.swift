
#if canImport(UIKit)

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

#endif
