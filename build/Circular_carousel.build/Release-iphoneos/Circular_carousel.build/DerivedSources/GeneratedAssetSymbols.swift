import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "Pic 1" asset catalog image resource.
    static let pic1 = DeveloperToolsSupport.ImageResource(name: "Pic 1", bundle: resourceBundle)

    /// The "Pic 2" asset catalog image resource.
    static let pic2 = DeveloperToolsSupport.ImageResource(name: "Pic 2", bundle: resourceBundle)

    /// The "Pic 3" asset catalog image resource.
    static let pic3 = DeveloperToolsSupport.ImageResource(name: "Pic 3", bundle: resourceBundle)

    /// The "Pic 4" asset catalog image resource.
    static let pic4 = DeveloperToolsSupport.ImageResource(name: "Pic 4", bundle: resourceBundle)

    /// The "Pic 5" asset catalog image resource.
    static let pic5 = DeveloperToolsSupport.ImageResource(name: "Pic 5", bundle: resourceBundle)

    /// The "Pic 6" asset catalog image resource.
    static let pic6 = DeveloperToolsSupport.ImageResource(name: "Pic 6", bundle: resourceBundle)

    /// The "Pic 7" asset catalog image resource.
    static let pic7 = DeveloperToolsSupport.ImageResource(name: "Pic 7", bundle: resourceBundle)

    /// The "Pic 8" asset catalog image resource.
    static let pic8 = DeveloperToolsSupport.ImageResource(name: "Pic 8", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "Pic 1" asset catalog image.
    static var pic1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic1)
#else
        .init()
#endif
    }

    /// The "Pic 2" asset catalog image.
    static var pic2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic2)
#else
        .init()
#endif
    }

    /// The "Pic 3" asset catalog image.
    static var pic3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic3)
#else
        .init()
#endif
    }

    /// The "Pic 4" asset catalog image.
    static var pic4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic4)
#else
        .init()
#endif
    }

    /// The "Pic 5" asset catalog image.
    static var pic5: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic5)
#else
        .init()
#endif
    }

    /// The "Pic 6" asset catalog image.
    static var pic6: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic6)
#else
        .init()
#endif
    }

    /// The "Pic 7" asset catalog image.
    static var pic7: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic7)
#else
        .init()
#endif
    }

    /// The "Pic 8" asset catalog image.
    static var pic8: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pic8)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "Pic 1" asset catalog image.
    static var pic1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic1)
#else
        .init()
#endif
    }

    /// The "Pic 2" asset catalog image.
    static var pic2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic2)
#else
        .init()
#endif
    }

    /// The "Pic 3" asset catalog image.
    static var pic3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic3)
#else
        .init()
#endif
    }

    /// The "Pic 4" asset catalog image.
    static var pic4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic4)
#else
        .init()
#endif
    }

    /// The "Pic 5" asset catalog image.
    static var pic5: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic5)
#else
        .init()
#endif
    }

    /// The "Pic 6" asset catalog image.
    static var pic6: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic6)
#else
        .init()
#endif
    }

    /// The "Pic 7" asset catalog image.
    static var pic7: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic7)
#else
        .init()
#endif
    }

    /// The "Pic 8" asset catalog image.
    static var pic8: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pic8)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

