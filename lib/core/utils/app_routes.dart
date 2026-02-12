import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/confirmation_email_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/create_new_password_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/login_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/register_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/reset_password_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/successful_password_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/verify_email.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/views/cart_view.dart';
import 'package:quick_mart/Features/Cart/presentation/views/product_details_view.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/checkout_view.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/order_items_view.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/order_place_successfully_view.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_payment_body.dart';
import 'package:quick_mart/Features/Checkout/presentation/views/widgets/checkout_review_body.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/presentation/views/categories_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/exclusive_sales_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/home_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/leatest_products_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/products_search_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/products_view.dart';
import 'package:quick_mart/Features/Home/presentation/views/sub_category_view.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/onboarding_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/change_password_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/language_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/order_history_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/profile_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/shipping_address_view.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/new_password_view_body.dart';
import 'package:quick_mart/Features/Splash/presentation/views/splash_view.dart';
import 'package:quick_mart/Features/Wishlist/presentation/views/wishlist_view.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppRoutes {
  const AppRoutes._();
  static const kOnboardingView = '/onboardingView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kConfirmationEmailView = '/confirmationEmailView';
  static const kVerifyEmail = '/verifyEmail';
  static const kCreateNewPasswordView = '/reateNewPasswordView';
  static const kSuccessfulPasswordView = '/successfulPasswordView';
  static const kHomeView = '/homeView';
  static const kCategoriesView = '/categoriesView';
  static const kSubCategoriesView = '/subCategoriesView';
  static const kProductsView = '/productsView';
  static const kProductsSearchView = '/productsSearchView';
  static const kExclusiveSalesView = '/ExclusiveSalesView';
  static const kProductDetailsView = '/productDetailsView';
  static const kCartView = '/cartView';
  static const kWishlist = '/wishlist';
  static const kCheckoutView = '/checkoutView';
  static const kCheckoutPaymentBody = '/checkoutPaymentBody';
  static const kCheckoutReviewBody = '/checkoutReviewBody';
  static const kOrderItemsView = '/orderItemsView';
  static const kOrderPlaceSuccessfullyView = '/orderPlaceSuccessfullyView';
  static const kProfileView = '/profileView';
  static const kShippingAddressView = '/shippingAddressView';
  static const kChangePasswordView = '/changePasswordView';
  static const kNewPasswordViewBody = '/newPasswordViewBody';
  static const kOrderHistoryView = '/orderHistoryView';
  static const kResetPasswordView = '/resetPasswordView';
  static const kLeatestProductsView = '/leatestProductsView';
  static const kLanguageView = '/languageView';

  static final router = GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final user = FirebaseAuth.instance.currentUser;
      final loggedIn = user != null;

      final prefs = getIt.get<SharedPreferences>();
      final hasLoggedInBefore = prefs.getBool('hasLoggedInBefore') ?? false;

      final goingToSplash = state.matchedLocation == '/';

      if (loggedIn && goingToSplash) {
        return AppRoutes.kHomeView;
      }

      if (!loggedIn && !hasLoggedInBefore && goingToSplash) {
        return null;
      }

      if (!loggedIn && hasLoggedInBefore && goingToSplash) {
        return AppRoutes.kLoginView;
      }

      if (!loggedIn && state.matchedLocation == AppRoutes.kHomeView) {
        return AppRoutes.kLoginView;
      }

      return null;
    },

    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kConfirmationEmailView,
        builder: (context, state) => const ConfirmationEmailView(),
      ),
      GoRoute(
        path: kVerifyEmail,
        builder: (context, state) => const VerifyEmail(),
      ),
      GoRoute(
        path: kCreateNewPasswordView,
        builder: (context, state) => const CreateNewPasswordView(),
      ),
      GoRoute(
        path: kSuccessfulPasswordView,
        builder: (context, state) => const SuccessfulPasswordView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kCategoriesView,
        builder: (context, state) => const CategoriesView(),
      ),
      GoRoute(
        path: kSubCategoriesView,
        builder: (context, state) => const SubCategoryView(),
      ),
      GoRoute(
        path: kProductsView,
        builder: (context, state) {
          final categoryName = state.extra as String;
          return ProductsView(categoryName: categoryName);
        },
      ),
      GoRoute(
        path: kProductsSearchView,
        builder: (context, state) => const ProductsSearchView(),
      ),
      GoRoute(
        path: kExclusiveSalesView,
        builder: (context, state) => const ExclusiveSalesView(),
      ),
      GoRoute(
        path: kProductDetailsView,
        builder: (context, state) {
          final product = state.extra as ProductEntity;
          return ProductDetailsView(product: product);
        },
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) {
          return CartView();
        },
      ),
      GoRoute(
        path: kWishlist,
        builder: (context, state) => const WishlistView(),
      ),
      GoRoute(
        path: kLeatestProductsView,
        builder: (context, state) => const LeatestProductsView(),
      ),
      GoRoute(
        path: kCheckoutView,
        builder: (context, state) {
          final products = state.extra as List<CartItemEntity>;
          return CheckoutView(products: products);
        },
      ),
      GoRoute(
        path: AppRoutes.kCheckoutPaymentBody,
        builder: (context, state) {
          final order = state.extra as OrderEntity;
          return CheckoutPaymentBody(order: order);
        },
      ),

      GoRoute(
        path: kCheckoutReviewBody,
        builder: (context, state) {
          final order = state.extra as OrderEntity;
          return CheckoutReviewBody(order: order);
        },
      ),
      GoRoute(
        path: kOrderItemsView,
        builder: (context, state) {
          final products = state.extra as List<CartItemEntity>;
          return OrderItemsView(products: products);
        },
      ),
      GoRoute(
        path: kOrderPlaceSuccessfullyView,
        builder: (context, state) => const OrderPlaceSuccessfullyView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kShippingAddressView,
        builder: (context, state) => const ShippingAddressView(),
      ),
      GoRoute(
        path: kChangePasswordView,
        builder: (context, state) => const ChangePasswordView(),
      ),
      GoRoute(
        path: kNewPasswordViewBody,
        builder: (context, state) => const NewPasswordViewBody(),
      ),
      GoRoute(
        path: kOrderHistoryView,
        builder: (context, state) => const OrderHistoryView(),
      ),
      GoRoute(
        path: kResetPasswordView,
        builder: (context, state) {
          final emailController = state.extra as TextEditingController;
          return ResetPasswordView(emailController: emailController);
        },
      ),
      GoRoute(
        path: kLanguageView,
        builder: (context, state) => const LanguageView(),
      ),
    ],
  );
}
