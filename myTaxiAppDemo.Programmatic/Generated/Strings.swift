
import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum MainTabBar {
    //ko'chani nomi:
    internal static var nameOfStreet = L10n.tr("Localizable", "5a улица Асадуллы Ходжаева")
    //Qayerga: qayerga borish haqida ma'lumot
    internal static var searchOfStreet = L10n.tr("Localizable", "Куда?")
  }

  internal enum SlideMenu {
    /// Profile egasini ismi
    internal static var profileName = L10n.tr("Localizable", "Islombek Normukhammadov")
    /// Mobile raqam
    internal static var profileMobileNumber = L10n.tr("Localizable", "+998(97) 000-00-00")
  }
    
  internal enum SlideMenuTableCell {
      internal static var firstTextCell = L10n.tr("Localizable", "Мои поездки")
      
      internal static var secondTextCell = L10n.tr("Localizable", "Способы оплаты ")
      
      internal static var thirdTextCell = L10n.tr("Localizable", "Избранные адреса")
    }
    
  

  internal enum TripTableCell {
    /// Barchasi to'g'ri
    internal static var streetName = L10n.tr("Localizable", "улица Sharof Rashidov, Ташкент")
    /// ORTGA QAYTISH
    internal static var secondStreetName = L10n.tr("Localizable", "5a улица Асадуллы Ходжаева")
      
    internal static var time = L10n.tr("Localizable", "21:36 - 22:12")
    /// Imkon
   
  }

  internal enum TabBar {
    /// Kitoblar
    internal static var books = L10n.tr("Localizable", "tabBar.books")
    /// Bosh sahifa
    internal static var main = L10n.tr("Localizable", "tabBar.main")
    /// Menu
    internal static var menu = L10n.tr("Localizable", "tabBar.menu")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    return key
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
