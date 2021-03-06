// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {

  public enum File {
    public enum Formart {
      /// json
      public static let json = L10n.tr("Localizable", "File.Formart.json")
    }
  }

  public enum Resolver {
    public enum SafelyResolve {
      /// %@ is nil
      public static func preconditionFailure(_ p1: Any) -> String {
        return L10n.tr("Localizable", "Resolver.SafelyResolve.preconditionFailure", String(describing: p1))
      }
    }
  }

  public enum Symbol {
    /// \b
    public static let backspace = L10n.tr("Localizable", "Symbol.backspace")
  }

  public enum Twitter {
    public enum ProfileImage {
      public enum Size {
        /// _bigger
        public static let bigger = L10n.tr("Localizable", "Twitter.ProfileImage.Size.bigger")
        /// _normal
        public static let normal = L10n.tr("Localizable", "Twitter.ProfileImage.Size.normal")
      }
    }
  }

  public enum UISearchBar {
    /// searchField
    public static let searchField = L10n.tr("Localizable", "UISearchBar.searchField")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle = Bundle(for: BundleToken.self)
}
// swiftlint:enable convenience_type
