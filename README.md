# QuickMart Ecommerce App

QuickMart is a feature-rich ecommerce app built with Flutter, designed for seamless shopping experiences. The app is developed using clean coding principles and follows the MVVM (Model-View-ViewModel) design pattern for better separation of concerns, scalability, and maintainability.

## Features

- User authentication (login & signup)
- Product listing and categorization
- Product details page with image carousel
- Shopping cart and order management
- Search and filter functionality
- Payment gateway integration
- User profile management
- Responsive UI for both Android and iOS
- Offline capabilities with cached data
- Real-time notifications for order status updates
- Wishlist functionality

## Tech Stack

- **Flutter**: Cross-platform development for iOS and Android
- **State Management**: Provider for state management and MVVM implementation
- **Clean Architecture**: Separation of concerns with clear layers for data, domain, and presentation
- **API**: RESTful API integration for fetching products, user data, and managing orders
- **Database**: SQLite or Firebase for user data and caching

## Design

The design for the QuickMart app is available on Figma. You can view the UI kit and app design [here](https://www.figma.com/design/Jv6YgAHkY3UABBa4uhXAdw/QuickMart-Ecommerce-App-UI-Kit-(Community)?node-id=6-4&node-type=&t=XbisaX1QnGpKk2F3-0).

## Architecture

QuickMart uses **Clean Architecture** and the **MVVM** design pattern. The project is divided into the following layers:

1. **Presentation Layer**: Contains the UI and ViewModel classes. This layer is responsible for displaying data to the user and interacting with the ViewModel to get business logic data.
2. **Domain Layer**: Handles the business logic of the application. It contains use cases that act as intermediaries between the presentation layer and the data layer.
3. **Data Layer**: Contains the repository implementations and data sources (local and remote). It is responsible for fetching and caching data.

## Folder Structure

```bash
lib/
├── core/               # Contains shared utilities, constants, and themes
├── data/               # Data sources, models, and repositories
│   └── models/         # Data models for API responses and local entities
├── domain/             # Use cases and repository contracts (interfaces)
├── presentation/       # UI (screens, widgets) and ViewModels
│   ├── screens/        # Different screens of the app (Home, Cart, Product Details)
│   ├── widgets/        # Reusable widgets
│   └── viewmodels/     # ViewModels for each screen
└── main.dart           # Entry point of the app
