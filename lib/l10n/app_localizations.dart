import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'The Arab World’s No 1 Ecommerce App'**
  String get tagline;

  /// No description provided for @skip_for_now.
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get skip_for_now;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get get_started;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Signup'**
  String get signup;

  /// No description provided for @dont_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dont_have_account;

  /// No description provided for @already_have_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get already_have_account;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @enter_full_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enter_full_name;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @enter_email.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enter_email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enter_password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password;

  /// No description provided for @create_account.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get create_account;

  /// No description provided for @login_with_google.
  ///
  /// In en, this message translates to:
  /// **'Login with Google'**
  String get login_with_google;

  /// No description provided for @signup_with_google.
  ///
  /// In en, this message translates to:
  /// **'Signup with Google'**
  String get signup_with_google;

  /// No description provided for @field_required.
  ///
  /// In en, this message translates to:
  /// **'Field is required'**
  String get field_required;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'cart'**
  String get cart;

  /// No description provided for @forget_password.
  ///
  /// In en, this message translates to:
  /// **'Forget Password'**
  String get forget_password;

  /// No description provided for @confirmation_email.
  ///
  /// In en, this message translates to:
  /// **'Confirmation Email'**
  String get confirmation_email;

  /// No description provided for @enter_email_verification.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address for verification.'**
  String get enter_email_verification;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @email_verification.
  ///
  /// In en, this message translates to:
  /// **'Email Verification'**
  String get email_verification;

  /// No description provided for @enter_6_digit_code.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit verification code send to your email address.'**
  String get enter_6_digit_code;

  /// No description provided for @digit_verification_sent.
  ///
  /// In en, this message translates to:
  /// **'6-digit Verification code has been send to your email address.'**
  String get digit_verification_sent;

  /// No description provided for @resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resend_code;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @create_password.
  ///
  /// In en, this message translates to:
  /// **'Create Password'**
  String get create_password;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @enter_new_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your new password and remember it.'**
  String get enter_new_password;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @password_reset_email_sent.
  ///
  /// In en, this message translates to:
  /// **'Password reset email sent'**
  String get password_reset_email_sent;

  /// No description provided for @password_reset_success.
  ///
  /// In en, this message translates to:
  /// **'Password reset email link sent successfully. Check your mail'**
  String get password_reset_success;

  /// No description provided for @resend_link.
  ///
  /// In en, this message translates to:
  /// **'Resend link'**
  String get resend_link;

  /// No description provided for @new_password_set_successfully.
  ///
  /// In en, this message translates to:
  /// **'New password set successfully'**
  String get new_password_set_successfully;

  /// No description provided for @new_password_success_message.
  ///
  /// In en, this message translates to:
  /// **'Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.'**
  String get new_password_success_message;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @my_cart.
  ///
  /// In en, this message translates to:
  /// **'My Cart'**
  String get my_cart;

  /// No description provided for @wishlist.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get wishlist;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @explore_products.
  ///
  /// In en, this message translates to:
  /// **'Explore a wide range of products'**
  String get explore_products;

  /// No description provided for @explore_products_desc.
  ///
  /// In en, this message translates to:
  /// **'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.'**
  String get explore_products_desc;

  /// No description provided for @unlock_exclusive_offers.
  ///
  /// In en, this message translates to:
  /// **'Unlock exclusive offers and discounts'**
  String get unlock_exclusive_offers;

  /// No description provided for @unlock_exclusive_offers_desc.
  ///
  /// In en, this message translates to:
  /// **'Get access to limited-time deals and special promotions available only to our valued customers.'**
  String get unlock_exclusive_offers_desc;

  /// No description provided for @safe_secure_payments.
  ///
  /// In en, this message translates to:
  /// **'Safe and secure payments'**
  String get safe_secure_payments;

  /// No description provided for @safe_secure_payments_desc.
  ///
  /// In en, this message translates to:
  /// **'QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.'**
  String get safe_secure_payments_desc;

  /// No description provided for @see_all.
  ///
  /// In en, this message translates to:
  /// **'SEE ALL'**
  String get see_all;

  /// No description provided for @latest_products.
  ///
  /// In en, this message translates to:
  /// **'Latest Products'**
  String get latest_products;

  /// No description provided for @voucher_code.
  ///
  /// In en, this message translates to:
  /// **'Voucher Code'**
  String get voucher_code;

  /// No description provided for @enter_voucher_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Voucher Code'**
  String get enter_voucher_code;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @order_info.
  ///
  /// In en, this message translates to:
  /// **'Order Info'**
  String get order_info;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @shipping_cost.
  ///
  /// In en, this message translates to:
  /// **'Shipping Cost'**
  String get shipping_cost;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @buy_now.
  ///
  /// In en, this message translates to:
  /// **'Buy Now'**
  String get buy_now;

  /// No description provided for @add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Add To Cart'**
  String get add_to_cart;

  /// No description provided for @product_added_to_cart.
  ///
  /// In en, this message translates to:
  /// **'The product has been added to your cart'**
  String get product_added_to_cart;

  /// No description provided for @view_cart.
  ///
  /// In en, this message translates to:
  /// **'View Cart'**
  String get view_cart;

  /// No description provided for @color.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// No description provided for @all_colors.
  ///
  /// In en, this message translates to:
  /// **'All 5 Colors'**
  String get all_colors;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'reviews'**
  String get reviews;

  /// No description provided for @your_cart_empty.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get your_cart_empty;

  /// No description provided for @cart_empty_desc.
  ///
  /// In en, this message translates to:
  /// **'Looks like you have not added anything in your cart. Go ahead and explore top categories.'**
  String get cart_empty_desc;

  /// No description provided for @explore_categories.
  ///
  /// In en, this message translates to:
  /// **'Explore Categories'**
  String get explore_categories;

  /// No description provided for @shipping.
  ///
  /// In en, this message translates to:
  /// **'Shipping'**
  String get shipping;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @full_name_label.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name_label;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @street_address.
  ///
  /// In en, this message translates to:
  /// **'Street Address'**
  String get street_address;

  /// No description provided for @enter_street_address.
  ///
  /// In en, this message translates to:
  /// **'Enter street address'**
  String get enter_street_address;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @enter_country.
  ///
  /// In en, this message translates to:
  /// **'Enter Country'**
  String get enter_country;

  /// No description provided for @province.
  ///
  /// In en, this message translates to:
  /// **'Province'**
  String get province;

  /// No description provided for @enter_province.
  ///
  /// In en, this message translates to:
  /// **'Enter Province'**
  String get enter_province;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @enter_city.
  ///
  /// In en, this message translates to:
  /// **'Enter City'**
  String get enter_city;

  /// No description provided for @follow_up.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get follow_up;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @card_holder_name.
  ///
  /// In en, this message translates to:
  /// **'Card Holder Name'**
  String get card_holder_name;

  /// No description provided for @enter_card_holder_name.
  ///
  /// In en, this message translates to:
  /// **'Enter card holder name'**
  String get enter_card_holder_name;

  /// No description provided for @card_number.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get card_number;

  /// No description provided for @expiration.
  ///
  /// In en, this message translates to:
  /// **'Expiration'**
  String get expiration;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get items;

  /// No description provided for @shipping_address.
  ///
  /// In en, this message translates to:
  /// **'Shipping Address'**
  String get shipping_address;

  /// No description provided for @place_order.
  ///
  /// In en, this message translates to:
  /// **'Place Order'**
  String get place_order;

  /// No description provided for @order_placed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Your order has been placed successfully'**
  String get order_placed_successfully;

  /// No description provided for @order_success_message.
  ///
  /// In en, this message translates to:
  /// **'Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!'**
  String get order_success_message;

  /// No description provided for @continue_shopping.
  ///
  /// In en, this message translates to:
  /// **'Continue Shopping'**
  String get continue_shopping;

  /// No description provided for @your_wishlist_empty.
  ///
  /// In en, this message translates to:
  /// **'Your wishlist is empty'**
  String get your_wishlist_empty;

  /// No description provided for @wishlist_empty_desc.
  ///
  /// In en, this message translates to:
  /// **'Tap heart button to start saving your favorite items.'**
  String get wishlist_empty_desc;

  /// No description provided for @personal_information.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personal_information;

  /// No description provided for @shipping_address_title.
  ///
  /// In en, this message translates to:
  /// **'Shipping Address'**
  String get shipping_address_title;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @order_history.
  ///
  /// In en, this message translates to:
  /// **'Order History'**
  String get order_history;

  /// No description provided for @account_management.
  ///
  /// In en, this message translates to:
  /// **'Account Management'**
  String get account_management;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @dark_theme.
  ///
  /// In en, this message translates to:
  /// **'Dark Theme'**
  String get dark_theme;

  /// No description provided for @old_password.
  ///
  /// In en, this message translates to:
  /// **'Old Password'**
  String get old_password;

  /// No description provided for @old_password_desc.
  ///
  /// In en, this message translates to:
  /// **'Enter old password to change the password.'**
  String get old_password_desc;

  /// No description provided for @new_password_desc.
  ///
  /// In en, this message translates to:
  /// **'Enter your new password and remember it.'**
  String get new_password_desc;

  /// No description provided for @ongoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get ongoing;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @no_ongoing_order.
  ///
  /// In en, this message translates to:
  /// **'No ongoing order'**
  String get no_ongoing_order;

  /// No description provided for @no_ongoing_order_desc.
  ///
  /// In en, this message translates to:
  /// **'We currently don\'t have any active orders in progress. Feel free to explore our products and place a new order.'**
  String get no_ongoing_order_desc;

  /// No description provided for @no_completed_order.
  ///
  /// In en, this message translates to:
  /// **'No completed order'**
  String get no_completed_order;

  /// No description provided for @no_completed_order_desc.
  ///
  /// In en, this message translates to:
  /// **'We don\'t have any past orders that have been completed. Start shopping now and create your first order with us.'**
  String get no_completed_order_desc;

  /// No description provided for @estimated_time.
  ///
  /// In en, this message translates to:
  /// **'Estimated time: 7 working days'**
  String get estimated_time;

  /// No description provided for @delete_product_from.
  ///
  /// In en, this message translates to:
  /// **'Delete product from'**
  String get delete_product_from;

  /// No description provided for @delete_1_product.
  ///
  /// In en, this message translates to:
  /// **'Delete (1) product'**
  String get delete_1_product;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @product_removed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Product removed successfully'**
  String get product_removed_successfully;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @price_low_to_high.
  ///
  /// In en, this message translates to:
  /// **'Price (Low to High)'**
  String get price_low_to_high;

  /// No description provided for @price_high_to_low.
  ///
  /// In en, this message translates to:
  /// **'Price (High to Low)'**
  String get price_high_to_low;

  /// No description provided for @recent_search.
  ///
  /// In en, this message translates to:
  /// **'RECENT SEARCH'**
  String get recent_search;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @exclusive_sales.
  ///
  /// In en, this message translates to:
  /// **'Exclusive Sales'**
  String get exclusive_sales;

  /// No description provided for @no_results_found.
  ///
  /// In en, this message translates to:
  /// **'No results found.'**
  String get no_results_found;

  /// No description provided for @password_changed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully'**
  String get password_changed_successfully;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
