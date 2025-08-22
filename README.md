# Marketivo Backend

A robust, scalable Spring Boot REST API backend for modern e-commerce applications. Built with enterprise-grade technologies and following best practices for security, performance, and maintainability. This backend provides comprehensive API endpoints for product management, order processing, payment integration, and user authentication.

## 🎯 Project Goal and Scope

### Project Type
- **Personal Project** (currently maintained by a single developer)  
- Designed with enterprise scalability and team collaboration in mind

### Team & Roles
- **Team Size**: 1 Developer (backend, database design & DevOps responsibilities)  
- **Potential Expansion**: Future-ready for additional backend developers, DBA, and security specialists

### Duration
- **Start Date**: August 2025  
- **Current Status**: In active development  
- **Planned v1.0 Release**: Q4 2025  

### Methodologies
- **Development Approach**: Agile-inspired, iterative releases  
- **Task Management**: [Trello Board](https://trello.com/b/AYQPIdZ0/marketivo)  
- **Branching Strategy**: Single main branch with direct commits  
- **Code Reviews**: Self-review with automated testing & quality checks  

This project serves as the backbone API for the Marketivo e-commerce platform, providing:

- RESTful API endpoints for all frontend operations
- Secure authentication and authorization with Okta integration
- Payment processing with Stripe integration
- Comprehensive product catalog management with multi-language support
- Order management and tracking system
- Customer profile and address management
- Database design optimized for e-commerce operations
- Scalable architecture ready for high-traffic loads

**API Documentation**: Available at `/swagger-ui.html` when running locally

## 🏗️ API Architecture and Endpoints

The application provides RESTful API endpoints organized by domain:

### Product Management
| Endpoint | Method | Description | Authentication Required |
|----------|---------|-------------|------------------------|
| `/api/products` | GET | Get all products with pagination | ❌ |
| `/api/products/{id}` | GET | Get product by ID | ❌ |
| `/api/products/search/{name}` | GET | Search products by name | ❌ |
| `/api/product-categories` | GET | Get all product categories | ❌ |
| `/api/product-categories/{id}/products` | GET | Get products by category | ❌ |

### Order Management
| Endpoint | Method | Description | Authentication Required |
|----------|---------|-------------|------------------------|
| `/api/orders` | POST | Create new order | ✅ |
| `/api/orders` | GET | Get user's order history | ✅ |
| `/api/orders/{id}` | GET | Get order details | ✅ |

### Customer Management
| Endpoint | Method | Description | Authentication Required |
|----------|---------|-------------|------------------------|
| `/api/customers` | GET | Get customer profile | ✅ |
| `/api/customers` | PUT | Update customer profile | ✅ |
| `/api/customers/addresses` | GET | Get customer addresses | ✅ |
| `/api/customers/addresses` | POST | Add new address | ✅ |

### Payment Processing
| Endpoint | Method | Description | Authentication Required |
|----------|---------|-------------|------------------------|
| `/api/checkout/payment-intent` | POST | Create Stripe payment intent | ✅ |
| `/api/checkout/confirm-payment` | POST | Confirm payment and create order | ✅ |

### Location Services
| Endpoint | Method | Description | Authentication Required |
|----------|---------|-------------|------------------------|
| `/api/countries` | GET | Get all countries | ❌ |
| `/api/states/search/{country}` | GET | Get states by country | ❌ |

## 🚀 Features

### Core Technologies
- **Spring Boot 3.2.0** - Latest Spring Boot framework with Java 17
- **Spring Data JPA** - Data persistence and repository pattern
- **Spring Data REST** - Automatic REST API generation
- **Spring Security** - Comprehensive security framework
- **MySQL** - Robust relational database management

### Security & Authentication
- **Okta Integration** - Enterprise-grade OAuth2/OpenID Connect authentication
- **JWT Token Validation** - Secure API access with token-based authentication
- **CORS Configuration** - Cross-origin resource sharing for frontend integration
- **Method-Level Security** - Fine-grained access control on API endpoints
- **Input Validation** - Comprehensive request validation and sanitization

### Payment Integration
- **Stripe Integration** - Secure payment processing with multiple payment methods
- **Payment Intent API** - Modern payment flow with strong customer authentication
- **Webhook Support** - Real-time payment status updates
- **Error Handling** - Comprehensive payment error management

### Database Design
- **E-commerce Optimized Schema** - Designed for scalability and performance
- **Multi-language Support** - Product and category translations
- **Address Management** - Flexible address system with country/state support
- **Order Tracking** - Complete order lifecycle management
- **Customer Profiles** - Comprehensive customer data management

### Performance & Scalability
- **Connection Pooling** - HikariCP for optimal database connections
- **Lazy Loading** - Optimized JPA entity relationships
- **Pagination Support** - Large dataset handling with Spring Data REST
- **Query Optimization** - Efficient database queries with proper indexing
- **Caching Ready** - Architecture prepared for Redis integration

### Development & Operations
- **Docker Support** - Containerized deployment with Alpine Linux
- **Environment Configuration** - External configuration for different environments
- **Comprehensive Logging** - Structured logging for monitoring and debugging
- **Health Checks** - Application monitoring and status endpoints
- **Maven Build System** - Dependency management and build automation

### Data Management
- **JPA/Hibernate** - Object-relational mapping with advanced features
- **Database Migrations** - Version-controlled database schema changes
- **Transaction Management** - ACID compliance with declarative transactions
- **Entity Validation** - Bean validation for data integrity
- **Repository Pattern** - Clean data access layer abstraction

## 📋 Prerequisites

- **Java** (17 or higher)
- **Maven** (3.6 or higher)
- **MySQL** (8.0 or higher)
- **Docker** (for containerized deployment)
- **Git** (for version control)

## 💾 Database Setup

### Prerequisites
Before setting up the application, ensure you have a MySQL database server running. This can be:
- **Local MySQL Installation**: MySQL Community Server installed on your machine
- **Dockerized MySQL**: MySQL running in a Docker container
- **Cloud Database**: AWS RDS, Google Cloud SQL, Azure Database, etc.
- **Remote MySQL Server**: Any accessible MySQL server

### Database Creation Script
The project includes a comprehensive database creation script located at:
```
scripts/marketivo-db.sql
```

**This script includes:**
- Complete database schema (tables, indexes, foreign keys)
- Sample data for development and testing
- Reference data (countries, states, product categories, languages)
- Product catalog with sample products
- All necessary constraints and relationships

### Setting up the Database

#### Method 1: Using MySQL Workbench (Recommended)
1. **Start your MySQL server** (ensure it's running and accessible)
2. **Open MySQL Workbench** and connect to your MySQL server
3. **Open the SQL script**: 
   - File → Open SQL Script
   - Navigate to `scripts/marketivo-db.sql`
4. **Execute the script**: 
   - Click the lightning bolt icon or press Ctrl+Shift+Enter
   - The script will create the complete database structure with sample data
5. **Verify creation**: 
   - Refresh the schemas panel
   - You should see the `marketivo` database (or the name specified in your script)

#### Method 2: Using MySQL Command Line
```bash
# Navigate to the project directory
cd d:\JavaProjects\marketivo\marketivo-backend

# Execute the script (ensure MySQL server is running)
mysql -u root -p < scripts/marketivo-db.sql

# Or if you want to specify a specific database name:
mysql -u root -p -e "CREATE DATABASE marketivo;"
mysql -u root -p marketivo < scripts/marketivo-db.sql
```

#### Method 3: Using Docker MySQL (if you have MySQL in Docker)
```bash
# Copy script to running MySQL container
docker cp scripts/marketivo-db.sql mysql-container:/tmp/

# Execute script inside container
docker exec -i mysql-container mysql -u root -p < /tmp/marketivo-db.sql
```

### Database Configuration
After creating the database, update your environment variables to match your MySQL setup:

```bash
# Example configuration for local MySQL
export DB_URL=jdbc:mysql://localhost:3306/marketivo
export DB_USERNAME=root
export DB_PASSWORD=your_mysql_password

# Example configuration for Docker MySQL
export DB_URL=jdbc:mysql://localhost:3306/marketivo
export DB_USERNAME=marketivo_user
export DB_PASSWORD=secure_password

# Example configuration for remote MySQL
export DB_URL=jdbc:mysql://your-remote-host:3306/marketivo
export DB_USERNAME=your_username
export DB_PASSWORD=your_password
```

### Verifying Database Setup
After setting up the database, you can verify it's working correctly:

1. **Check table creation:**
   ```sql
   USE marketivo;
   SHOW TABLES;
   ```

2. **Verify sample data:**
   ```sql
   SELECT COUNT(*) FROM product;
   SELECT COUNT(*) FROM product_category;
   SELECT COUNT(*) FROM country;
   ```

3. **Test application connection:**
   ```bash
   mvn spring-boot:run
   # Check logs for successful database connection
   ```

### Database Schema Overview
The database includes these main entities:
- **Products & Categories**: Product catalog with multilingual support
- **Customers & Addresses**: User management and address handling
- **Orders & Order Items**: Order processing and tracking
- **Countries & States**: Geographic reference data
- **Languages**: Internationalization support

For detailed entity relationships, see the [Database Architecture](#-database-architecture) section.

## 🛠️ Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd marketivo-backend
   ```

2. **Database Setup**

   **Important**: This project includes a complete database creation script. You must have a MySQL database server running (either locally installed, dockerized, or cloud-hosted) before proceeding.

   **Option A: Using the provided SQL script (Recommended)**
   
   The project includes a complete database creation script at `scripts/marketivo-db.sql` that contains:
   - Database schema (tables, relationships, indexes)
   - Sample data for testing and development
   - All necessary reference data (countries, states, product categories)

   **To create the database using MySQL Workbench:**
   1. Ensure your MySQL server is running
   2. Open MySQL Workbench and connect to your MySQL server
   3. Open the SQL script: `scripts/marketivo-db.sql`
   4. Execute the script to create the complete database structure with sample data
   5. The script will create a database named according to your MySQL configuration

   **Option B: Manual database creation**
   ```sql
   -- Create database manually (if not using the provided script)
   CREATE DATABASE marketivo;
   
   -- Create user (optional)
   CREATE USER 'marketivo_user'@'localhost' IDENTIFIED BY 'password';
   GRANT ALL PRIVILEGES ON marketivo.* TO 'marketivo_user'@'localhost';
   FLUSH PRIVILEGES;
   ```

   **Note**: If you use the provided SQL script, it will handle database creation and population automatically. The application will also create/update the schema on startup using JPA if needed.

3. **Environment Configuration**
   
   Configure these environment variables for your deployment:
   
   **Database Configuration:**
   - `DB_DRIVER` - Database driver (default: com.mysql.cj.jdbc.Driver)
   - `DB_URL` - Database connection URL (default: jdbc:mysql://localhost:3306/marketivo)
   - `DB_USERNAME` - Database username (default: marketivo_user)
   - `DB_PASSWORD` - Database password (default: password)
   - `DB_MAX_POOL_SIZE` - Maximum connection pool size (default: 5)
   - `DB_MIN_IDLE` - Minimum idle connections (default: 2)
   
   **Security Configuration:**
   - `OKTA_ISSUER` - Okta authorization server issuer URL
   - `OKTA_CLIENT_ID` - Okta application client ID
   - `OKTA_AUDIENCE` - Okta API audience identifier
   - `ALLOWED_ORIGINS` - Allowed CORS origins (default: http://localhost:4200,https://localhost:4200)
   
   **Payment Configuration:**
   - `STRIPE_SECRET_KEY` - Stripe secret key for payment processing
   
   **API Configuration:**
   - `API_BASE_PATH` - API base path (default: /api)
   - `SERVER_PORT` - Server port (default: 8080)

4. **Build the application**
   ```bash
   mvn clean compile
   ```

5. **Run the application**
   ```bash
   mvn spring-boot:run
   ```

## 🎯 Development

### Available Maven Commands

#### Development Commands
```bash
# Start development server
mvn spring-boot:run

# Start with specific profile
mvn spring-boot:run -Dspring-boot.run.profiles=dev

# Start with debug mode
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"
```

#### Build Commands
```bash
# Clean and compile
mvn clean compile

# Full build with tests
mvn clean package

# Build without tests
mvn clean package -DskipTests

# Install to local repository
mvn clean install
```

#### Database Commands
```bash
# Generate database schema
mvn spring-boot:run -Dspring-boot.run.arguments="--spring.jpa.hibernate.ddl-auto=create"

# Update database schema
mvn spring-boot:run -Dspring-boot.run.arguments="--spring.jpa.hibernate.ddl-auto=update"
```

#### Testing Commands
```bash
# Note: Unit tests are not yet implemented and currently skipped in configuration
# This is planned for future development - see Roadmap section

# Build without tests (current default)
mvn clean package -DskipTests

# Future testing commands (when tests are implemented):
# mvn test                           # Run unit tests
# mvn verify                         # Run integration tests
# mvn test -Dtest=ProductServiceTest # Run specific test class
```

### Development Workflow

1. **Database First**: Set up MySQL database and configure connection
2. **Environment Variables**: Configure all required environment variables
3. **Build & Run**: Use Maven to build and run the application
4. **API Testing**: Use tools like Postman or curl to test endpoints
5. **Frontend Integration**: Connect with Angular frontend for full-stack testing

### Project Structure

```
src/main/java/com/fotbiler/marketivo/backend/
├── config/                  # Configuration classes
│   ├── CorsConfig.java             # CORS configuration
│   ├── SecurityConfig.java         # Security and authentication
│   └── StripeConfig.java           # Payment processing setup
├── controller/              # REST API controllers
│   ├── CheckoutController.java     # Payment and checkout endpoints
│   ├── CustomerController.java     # Customer management endpoints
│   ├── OrderController.java        # Order management endpoints
│   └── ProductController.java      # Product catalog endpoints
├── dao/                     # Data Access Objects (Repositories)
│   ├── CountryRepository.java      # Country data repository
│   ├── CustomerRepository.java     # Customer data repository
│   ├── OrderRepository.java        # Order data repository
│   ├── ProductRepository.java      # Product data repository
│   └── StateRepository.java        # State/Province repository
├── dto/                     # Data Transfer Objects
│   ├── CheckoutInfo.java           # Checkout request data
│   ├── PaymentInfo.java            # Payment information
│   ├── PurchaseRequest.java        # Purchase request data
│   └── PurchaseResponse.java       # Purchase response data
├── entity/                  # JPA Entity classes
│   ├── Address.java                # Customer address entity
│   ├── Country.java                # Country reference entity
│   ├── Customer.java               # Customer profile entity
│   ├── Language.java               # Language reference entity
│   ├── Order.java                  # Order entity
│   ├── OrderItem.java              # Order line items entity
│   ├── Product.java                # Product catalog entity
│   ├── ProductCategory.java        # Product category entity
│   ├── ProductCategoryTranslation.java # Category translations
│   ├── ProductTranslation.java     # Product translations
│   └── State.java                  # State/Province entity
├── service/                 # Business logic services
│   ├── CheckoutService.java        # Payment and order processing
│   ├── CustomerService.java        # Customer operations
│   ├── OrderService.java           # Order management
│   └── ProductService.java         # Product operations
└── MarketivoBackendApplication.java # Spring Boot main class

src/main/resources/
├── application.properties          # Application configuration
└── static/                         # Static resources (if any)

src/test/java/                      # Test classes
└── com/fotbiler/marketivo/backend/ # Test package structure
```

## 🛠️ Tools and Technologies

### Core Framework and Platform
- **Spring Boot**: 3.2.0 - Enterprise Java application framework
- **Java**: 17 - Long-term support Java version
- **Maven**: Latest - Dependency management and build automation

### Data Layer
- **Spring Data JPA**: Latest - Data persistence and repository abstraction
- **Hibernate**: Latest - Object-relational mapping framework
- **MySQL Connector**: Latest - MySQL database driver
- **HikariCP**: Built-in - High-performance connection pooling

### Security and Authentication
- **Spring Security**: Latest - Comprehensive security framework
- **Okta Spring Boot Starter**: 3.0.6 - OAuth2/OpenID Connect integration
- **JWT**: Built-in - JSON Web Token validation and processing

### Payment Processing
- **Stripe Java SDK**: 20.80.0 - Payment processing integration
- **Stripe Webhooks**: Built-in - Real-time payment notifications

### Development Tools
- **Lombok**: Latest - Reduces boilerplate code with annotations
- **Spring Boot DevTools**: Built-in - Development-time utilities
- **Maven Surefire**: Latest - Unit testing integration

### REST API
- **Spring Data REST**: Latest - Automatic REST API generation
- **Spring Web**: Latest - Web layer and REST controllers
- **Jackson**: Built-in - JSON serialization/deserialization

### Testing Framework
- **Spring Boot Test**: Latest - Comprehensive testing support
- **JUnit 5**: Latest - Unit testing framework
- **Mockito**: Built-in - Mocking framework for tests

### Deployment and DevOps
- **Docker**: Multi-stage containerization with Alpine Linux
- **Spring Boot Actuator**: Built-in - Production monitoring endpoints
- **External Configuration**: Environment-based configuration

### Database Design
- **JPA Annotations**: Entity relationship mapping
- **Bean Validation**: Input validation and constraints
- **Database Indexing**: Optimized query performance

## 🏗️ Database Architecture

### Entity Relationship Design

The database is designed following e-commerce best practices with proper normalization and internationalization support. The schema supports a complete e-commerce workflow from product catalog management to order processing.

### Core Entity Groups

#### 🛍️ Product Catalog Management
```
ProductCategory (1) ←─── (*) Product
       ↓                    ↓
       │                    │
   (*) ProductCategory   (*) ProductTranslation
       Translation           ↓
       ↓                  Language (1)
   Language (1)
```

#### 👤 Customer & Address Management
```
Customer (1) ←─── (*) Order
    ↓
    │
(*) Address ←─── (1) Order
    ↓
    │
Country (1) ←─── (*) State
```

#### 📦 Order Processing
```
Order (1) ←─── (*) OrderItem
  ↓               ↓
  │               │
Customer (1)   Product (*)
  ↓
Address (1)
```

#### 🌍 Internationalization Support
```
Language (1) ←─── (*) ProductTranslation ─── (*) Product
            ←─── (*) ProductCategoryTranslation ─── (*) ProductCategory
```

### Detailed Entity Relationships

#### Customer Management Domain
| Entity | Relationship | Target Entity | Type | Description |
|--------|-------------|---------------|------|-------------|
| **Customer** | `has many` | Order | `1:N` | Customer can have multiple orders |
| **Customer** | `identified by` | email | `Unique` | Email serves as unique identifier |

#### Address Management Domain
| Entity | Relationship | Target Entity | Type | Description |
|--------|-------------|---------------|------|-------------|
| **Address** | `belongs to` | Order | `1:1` | Each order has one shipping address |
| **Address** | `references` | Country | `N:1` | Address must specify a valid country |
| **Address** | `references` | State | `N:1` | Address can specify state/province |
| **Country** | `contains` | State | `1:N` | Country can have multiple states/provinces |

#### Product Catalog Domain
| Entity | Relationship | Target Entity | Type | Description |
|--------|-------------|---------------|------|-------------|
| **Product** | `belongs to` | ProductCategory | `N:1` | Each product belongs to one category |
| **Product** | `has many` | ProductTranslation | `1:N` | Multi-language product information |
| **ProductCategory** | `contains` | Product | `1:N` | Category can contain multiple products |
| **ProductCategory** | `has many` | ProductCategoryTranslation | `1:N` | Multi-language category information |

#### Order Management Domain
| Entity | Relationship | Target Entity | Type | Description |
|--------|-------------|---------------|------|-------------|
| **Order** | `belongs to` | Customer | `N:1` | Each order belongs to one customer |
| **Order** | `has` | Address | `1:1` | Each order has one shipping address |
| **Order** | `contains` | OrderItem | `1:N` | Order can contain multiple items |
| **OrderItem** | `references` | Product | `N:1` | Each item references a product |
| **OrderItem** | `belongs to` | Order | `N:1` | Each item belongs to one order |

#### Internationalization Domain
| Entity | Relationship | Target Entity | Type | Description |
|--------|-------------|---------------|------|-------------|
| **Language** | `supports` | ProductTranslation | `1:N` | Language can have multiple product translations |
| **Language** | `supports` | ProductCategoryTranslation | `1:N` | Language can have multiple category translations |
| **ProductTranslation** | `translates` | Product | `N:1` | Multiple translations per product |
| **ProductCategoryTranslation** | `translates` | ProductCategory | `N:1` | Multiple translations per category |

### Complete Database Schema Diagram

```
┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│    Customer     │    │     Address      │    │     Country     │
├─────────────────┤    ├──────────────────┤    ├─────────────────┤
│ id (PK)         │    │ id (PK)          │    │ id (PK)         │
│ first_name      │    │ street           │    │ code            │
│ last_name       │    │ city             │    │ name            │
│ email (UNIQUE)  │    │ state            │────┤                 │
└─────────┬───────┘    │ country          │    └─────────┬───────┘
          │            │ zip_code         │              │
          │            └──────────────────┘              │
          │                                              │
          │            ┌──────────────────┐              │
          │            │      State       │              │
          │            ├──────────────────┤              │
          │            │ id (PK)          │              │
          │            │ name             │              │
          │            │ country_id (FK)  │──────────────┘
          │            └──────────────────┘
          │
          │            ┌──────────────────┐    ┌─────────────────┐
          │            │      Order       │    │    OrderItem    │
          │            ├──────────────────┤    ├─────────────────┤
          │            │ id (PK)          │    │ id (PK)         │
          │            │ order_tracking_  │    │ image_url       │
          │            │   number         │    │ unit_price      │
          └────────────┤ customer_id (FK) │    │ quantity        │
                       │ total_quantity   │    │ product_id (FK) │
                       │ total_price      │    │ order_id (FK)   │────┐
                       │ status           │    └─────────────────┘    │
                       │ date_created     │                           │
                       │ last_updated     │                           │
                       └──────────┬───────┘                           │
                                  │                                   │
                                  └───────────────────────────────────┘

┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐    ┌──────────────────┐
│    Language     │    │ ProductTranslation│    │    Product      │    │ ProductCategory  │
├─────────────────┤    ├──────────────────┤    ├─────────────────┤    ├──────────────────┤
│ id (PK)         │    │ id (PK)          │    │ id (PK)         │    │ id (PK)          │
│ code            │    │ name             │    │ sku             │    │ category_icon    │
│ name            │    │ description      │    │ unit_price      │    └──────────┬───────┘
└─────────┬───────┘    │ language_id (FK) │────┤ image_url       │               │
          │            │ product_id (FK)  │    │ active          │               │
          │            └──────────────────┘    │ units_in_stock  │               │
          │                                    │ category_id (FK)│───────────────┘
          │            ┌──────────────────┐    │ date_created    │
          │            │ProductCategory   │    │ last_updated    │
          │            │   Translation    │    └─────────────────┘
          │            ├──────────────────┤
          │            │ id (PK)          │
          │            │ category_name    │
          │            │ language_id (FK) │
          └────────────┤ category_id (FK) │
                       └──────────────────┘
```

### Key Design Decisions

#### 1. **Internationalization Strategy**
- **Separate Translation Tables**: `ProductTranslation` and `ProductCategoryTranslation` for scalable multi-language support
- **Language Reference**: Centralized `Language` table for consistent language code management
- **Flexible Localization**: Support for any number of languages without schema changes

#### 2. **Address Management**
- **Flexible Geography**: `Country` and `State` reference tables for worldwide support
- **Order-Specific Addresses**: Each order captures shipping address at time of purchase
- **Address Validation**: Foreign key constraints ensure valid geographical references

#### 3. **Product Catalog Design**
- **Category Hierarchy**: Simple category system with potential for future hierarchical expansion
- **SKU Management**: Unique product identifiers for inventory management
- **Inventory Tracking**: Real-time stock level management with `units_in_stock`

#### 4. **Order Management**
- **Order Tracking**: Unique tracking numbers for customer order tracking
- **Audit Trail**: Creation and update timestamps for order lifecycle tracking
- **Order Items**: Separate line items for flexible product quantity and pricing

#### 5. **Performance Optimization**
- **Strategic Indexing**: Primary keys, foreign keys, and frequently queried fields
- **Lazy Loading**: JPA relationships configured for optimal memory usage
- **Connection Pooling**: HikariCP for efficient database connection management

#### 6. **Data Integrity**
- **Foreign Key Constraints**: Referential integrity across all relationships
- **Cascade Operations**: Proper cascade settings for parent-child relationships
- **Unique Constraints**: Email uniqueness for customers, SKU uniqueness for products

### Database Constraints and Indexes

```sql
-- Primary Key Constraints
ALTER TABLE customer ADD PRIMARY KEY (id);
ALTER TABLE product ADD PRIMARY KEY (id);
ALTER TABLE product_category ADD PRIMARY KEY (id);
ALTER TABLE orders ADD PRIMARY KEY (id);

-- Foreign Key Constraints
ALTER TABLE product ADD FOREIGN KEY (category_id) REFERENCES product_category(id);
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customer(id);
ALTER TABLE order_item ADD FOREIGN KEY (order_id) REFERENCES orders(id);
ALTER TABLE order_item ADD FOREIGN KEY (product_id) REFERENCES product(id);

-- Unique Constraints
ALTER TABLE customer ADD UNIQUE (email);
ALTER TABLE product ADD UNIQUE (sku);
ALTER TABLE orders ADD UNIQUE (order_tracking_number);

-- Performance Indexes
CREATE INDEX idx_product_category ON product(category_id);
CREATE INDEX idx_order_customer ON orders(customer_id);
CREATE INDEX idx_order_item_order ON order_item(order_id);
CREATE INDEX idx_order_item_product ON order_item(product_id);
CREATE INDEX idx_product_translation_product ON product_translation(product_id);
```

## 🔧 Configuration

### Application Properties

The application uses externalized configuration through environment variables:

#### Database Configuration
```properties
# Primary database connection
spring.datasource.url=${DB_URL:jdbc:mysql://localhost:3306/marketivo}
spring.datasource.username=${DB_USERNAME:marketivo_user}
spring.datasource.password=${DB_PASSWORD:password}

# Connection pooling
spring.datasource.hikari.maximum-pool-size=${DB_MAX_POOL_SIZE:5}
spring.datasource.hikari.minimum-idle=${DB_MIN_IDLE:2}
```

#### Security Configuration
```properties
# OAuth2/Okta settings
okta.oauth2.issuer=${OKTA_ISSUER:}
okta.oauth2.client-id=${OKTA_CLIENT_ID:}
okta.oauth2.audience=${OKTA_AUDIENCE:}

# CORS settings
allowed.origins=${ALLOWED_ORIGINS:http://localhost:4200,https://localhost:4200}
```

#### API Configuration
```properties
# REST API settings
spring.data.rest.base-path=${API_BASE_PATH:/api}
spring.data.rest.detection-strategy=ANNOTATED
server.port=${SERVER_PORT:8080}
```

### Environment-Specific Configuration

#### Development Environment
```bash
export DB_URL=jdbc:mysql://localhost:3306/marketivo_dev
export JPA_SHOW_SQL=true
export OKTA_ISSUER=https://dev-your-domain.okta.com/oauth2/default
```

#### Production Environment
```bash
export DB_URL=jdbc:mysql://prod-db-host:3306/marketivo
export DB_MAX_POOL_SIZE=20
export JPA_SHOW_SQL=false
export OKTA_ISSUER=https://your-domain.okta.com/oauth2/default
```

## 🐳 Docker Deployment

### Build Docker Image
```bash
# Build the application first
mvn clean package -DskipTests

# Build Docker image
docker build -t marketivo-backend .
```

### Run Container
```bash
docker run -p 8080:8080 \
  -e DB_URL=jdbc:mysql://host.docker.internal:3306/marketivo \
  -e DB_USERNAME=marketivo_user \
  -e DB_PASSWORD=your_password \
  -e OKTA_ISSUER=https://your-domain.okta.com/oauth2/default \
  -e OKTA_CLIENT_ID=your_client_id \
  -e OKTA_AUDIENCE=your_audience \
  -e STRIPE_SECRET_KEY=sk_test_your_stripe_key \
  marketivo-backend
```

### Docker Compose Example

**Note**: This example assumes you have a separate MySQL database server running. The application connects to your existing database server rather than creating a database container.

```yaml
version: '3.8'
services:
  backend:
    build: ./marketivo-backend
    ports:
      - "8080:8080"
    environment:
      - DB_URL=jdbc:mysql://your-db-host:3306/marketivo
      - DB_USERNAME=marketivo_user
      - DB_PASSWORD=secure_password
      - OKTA_ISSUER=https://your-domain.okta.com/oauth2/default
      - OKTA_CLIENT_ID=your_client_id
      - OKTA_AUDIENCE=your_audience
      - STRIPE_SECRET_KEY=sk_live_your_stripe_key
      - ALLOWED_ORIGINS=https://marketivo.yourdomain.com
    networks:
      - marketivo-network

networks:
  marketivo-network:
    driver: bridge
```

**Database Connection Options:**
- **Local MySQL**: Use `DB_URL=jdbc:mysql://host.docker.internal:3306/marketivo` (Windows/Mac)
- **Remote MySQL**: Use your actual database server hostname/IP
- **Cloud Database**: Use your cloud provider's connection string
- **Dockerized MySQL**: Use the container name as hostname if your DB is also in Docker

## 🔐 Authentication and Authorization

### Okta Integration

The application integrates with Okta for enterprise-grade authentication:

#### Configuration
```java
@Configuration
@EnableWebSecurity
public class SecurityConfig {
    
    @Value("${allowed.origins}")
    private String[] allowedOrigins;
    
    // Security configuration with Okta
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
            .cors(cors -> cors.configurationSource(corsConfigurationSource()))
            .csrf(csrf -> csrf.disable())
            .oauth2ResourceServer(oauth2 -> oauth2.jwt(Customizer.withDefaults()))
            .sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
            .build();
    }
}
```

#### Protected Endpoints
- **Customer Operations**: Require valid JWT token
- **Order Management**: User can only access their own orders
- **Checkout Process**: Authenticated users only
- **Profile Management**: User-specific data access

#### Public Endpoints
- **Product Catalog**: Browse products without authentication
- **Categories**: View product categories
- **Search**: Search products and categories
- **Reference Data**: Countries and states for address forms

## 💳 Payment Integration

### Stripe Integration

Comprehensive payment processing with Stripe:

#### Payment Flow
1. **Create Payment Intent**: Generate secure payment intent with amount
2. **Client-Side Payment**: Frontend handles payment form with Stripe.js
3. **Confirm Payment**: Backend confirms payment and creates order
4. **Order Creation**: Generate order upon successful payment

#### Security Features
- **Server-Side Payment Intent**: Payment amounts validated on backend
- **Webhook Validation**: Stripe webhook signature verification
- **Idempotency**: Prevent duplicate payments and orders
- **Error Handling**: Comprehensive payment error management

#### Example Payment Flow
```java
@PostMapping("/payment-intent")
public ResponseEntity<PaymentIntentResponse> createPaymentIntent(
    @RequestBody PaymentInfo paymentInfo) {
    
    PaymentIntentCreateParams params = PaymentIntentCreateParams.builder()
        .setAmount(paymentInfo.getAmount())
        .setCurrency("usd")
        .setAutomaticPaymentMethods(
            PaymentIntentCreateParams.AutomaticPaymentMethods.builder()
                .setEnabled(true)
                .build()
        )
        .build();
        
    PaymentIntent intent = PaymentIntent.create(params);
    return ResponseEntity.ok(new PaymentIntentResponse(intent.getClientSecret()));
}
```

## 🧪 Testing

### Current Testing Status
**Unit tests are not yet implemented** and are currently skipped in the Maven configuration (`<skipTests>true</skipTests>`). This is a planned improvement for future development.

### Planned Testing Strategy
The application is structured for comprehensive testing when implemented:

#### Future Test Categories
```bash
# Unit tests for services (planned)
src/test/java/com/fotbiler/marketivo/backend/service/

# Integration tests for repositories (planned)
src/test/java/com/fotbiler/marketivo/backend/dao/

# Controller tests for API endpoints (planned)
src/test/java/com/fotbiler/marketivo/backend/controller/

# Security tests for authentication (planned)
src/test/java/com/fotbiler/marketivo/backend/security/
```

#### Testing Implementation (Future)
```bash
# When tests are implemented, remove skipTests from pom.xml and run:
mvn test                    # Run all unit tests
mvn test -Dtest="*Service*" # Run service layer tests
mvn test -Dtest="*Controller*" # Run controller tests
mvn test -Dtest="*Repository*" # Run repository tests
```

### Current Testing Approach
- **Manual API Testing**: Using Postman or similar tools
- **Integration Testing**: Testing with frontend application
- **Database Testing**: Direct database queries and validation
- **End-to-End Testing**: Full workflow testing through the frontend

### API Testing with Postman

#### Sample API Test Collection
```json
{
  "info": {
    "name": "Marketivo Backend API",
    "description": "Complete API test collection"
  },
  "item": [
    {
      "name": "Products",
      "item": [
        {
          "name": "Get All Products",
          "request": {
            "method": "GET",
            "url": "{{base_url}}/api/products"
          }
        }
      ]
    }
  ]
}
```

## 📦 Build and Deployment

### Maven Build Process

The build process includes:

1. **Dependency Resolution** - Download and manage project dependencies
2. **Compilation** - Compile Java source code
3. **Test Execution** - Run unit and integration tests (currently skipped)
4. **Packaging** - Create executable JAR file
5. **Installation** - Install to local Maven repository

### Build Profiles

#### Development Profile
```bash
mvn spring-boot:run -Pdev
```

#### Production Profile
```bash
mvn clean package -Pprod -DskipTests
```

### Deployment Strategies

#### Traditional Deployment
```bash
# Build JAR
mvn clean package -DskipTests

# Run on server
java -jar target/marketivo-backend-1.0.0.jar
```

#### Docker Deployment
```bash
# Multi-stage build included in Dockerfile
docker build -t marketivo-backend .
docker run -p 8080:8080 marketivo-backend
```

#### Cloud Deployment
- **AWS ECS**: Container orchestration
- **Google Cloud Run**: Serverless containers
- **Azure Container Instances**: Simple container deployment
- **Kubernetes**: Scalable container orchestration

## 🚀 Performance Optimization

### Database Performance
- **Connection Pooling**: HikariCP for optimal connection management
- **Query Optimization**: Efficient JPA queries with proper joins
- **Indexing Strategy**: Database indexes on frequently queried columns
- **Lazy Loading**: JPA lazy loading for optimal memory usage

### API Performance
- **Pagination**: Large dataset handling with Spring Data REST
- **Caching Ready**: Architecture prepared for Redis/Hazelcast integration
- **Compression**: Response compression for large payloads
- **Connection Management**: Keep-alive and connection reuse

### JVM Optimization
```bash
# Production JVM settings
java -XX:+UseG1GC \
     -XX:MaxGCPauseMillis=200 \
     -Xms512m \
     -Xmx2g \
     -jar marketivo-backend.jar
```

## 🔒 Security Features

### Comprehensive Security Implementation

- **OAuth2 Resource Server**: Okta integration for authentication
- **JWT Token Validation**: Secure API access with token verification
- **CORS Configuration**: Controlled cross-origin resource sharing
- **Input Validation**: Bean validation for all input data
- **SQL Injection Prevention**: JPA parameterized queries
- **XSS Protection**: JSON serialization safety
- **HTTPS Ready**: TLS/SSL configuration support

### Security Headers
```java
// Example security configuration
http.headers(headers -> headers
    .frameOptions().deny()
    .contentTypeOptions().and()
    .httpStrictTransportSecurity(hstsConfig -> hstsConfig
        .maxAgeInSeconds(31536000)
        .includeSubdomains(true)
    )
);
```

## 📊 Monitoring and Observability

### Application Monitoring
- **Spring Boot Actuator**: Production-ready monitoring endpoints
- **Health Checks**: Application and database health monitoring
- **Metrics**: JVM, HTTP, and custom business metrics
- **Logging**: Structured logging with SLF4J and Logback

### Production Monitoring
```bash
# Health check endpoint
curl http://localhost:8080/actuator/health

# Application metrics
curl http://localhost:8080/actuator/metrics

# Application info
curl http://localhost:8080/actuator/info
```

## 🤝 Contributing

As this is currently a personal project developed by a single developer, contributions are welcome but managed differently than typical open-source projects:

### Current Development Process
- **Solo Development**: Currently developed and maintained by [Eren Gaygusuz](https://github.com/erengaygusuz)
- **Task Management**: Progress tracked on [Trello Board](https://trello.com/b/AYQPIdZ0/marketivo)
- **Single Branch**: Direct commits to main branch with thorough testing
- **Quality Assurance**: Manual testing and code review

### How to Contribute
1. **Check the Trello Board** to see current backend tasks and priorities
2. **Open an Issue** to discuss your proposed contribution
3. **Fork the repository** and create your feature branch
4. **Follow the development guidelines** outlined below
5. **Submit a Pull Request** with detailed description

### Development Guidelines
- **Follow Spring Boot best practices** and clean code principles
- **Maintain consistent code style** and architectural patterns
- **Write meaningful commit messages** following conventional commits
- **Test your changes** thoroughly before submitting
- **Update documentation** for significant API changes

### Code Standards
- **Java Code Style**: Follow Google Java Style Guide
- **Spring Conventions**: Use Spring Boot conventions and annotations
- **Database Design**: Follow JPA best practices and proper relationships
- **API Design**: RESTful API design principles
- **Security**: Security-first development approach
- **Error Handling**: Comprehensive error handling and logging

### API Documentation
- **OpenAPI/Swagger**: Document all API endpoints
- **Request/Response Examples**: Provide clear API usage examples
- **Error Codes**: Document all possible error responses
- **Authentication**: Clear authentication requirements

### Testing Guidelines
```java
// Example test structure (planned implementation)
@SpringBootTest
@TestPropertySource("/application-test.properties")
class ProductServiceTest {
    
    @Autowired
    private ProductService productService;
    
    @MockBean
    private ProductRepository productRepository;
    
    @Test
    void shouldReturnProductById() {
        // Given
        Product product = new Product();
        product.setId(1L);
        when(productRepository.findById(1L)).thenReturn(Optional.of(product));
        
        // When
        Product result = productService.findById(1L);
        
        // Then
        assertThat(result).isEqualTo(product);
    }
}
```

**Note**: The above is a planned test structure. Comprehensive unit and integration tests will be implemented in future versions (see Roadmap section).

### Database Migration Guidelines
- **Version Control**: All schema changes must be versioned
- **Backward Compatibility**: Ensure migration compatibility
- **Data Integrity**: Preserve existing data during migrations
- **Testing**: Test migrations on development data

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

This means you are free to:
- Use the software for any purpose
- Change the software to suit your needs
- Share the software with your friends and neighbors
- Share the changes you make

## 🚀 Roadmap

### Version 1.1 (Planned)
- 📋 **Comprehensive Unit Tests** - Implement full test coverage for all services and controllers
- 📋 **API Documentation** - OpenAPI/Swagger integration for interactive API documentation
- 📋 **Keycloak Integration** - Replace Okta with Keycloak for authentication and authorization
- 📋 **Database Migrations** - Flyway integration for version-controlled database changes

### Version 1.2 (Future)
- 🔮 **Redis Caching** - Implement Redis for performance optimization
- 🔮 **Email Notifications** - Order confirmation and status update emails
- 🔮 **Audit Trail** - Complete audit logging for all business operations
- 🔮 **Advanced Search** - Elasticsearch integration for advanced product search
- 🔮 **Rate Limiting** - API rate limiting and throttling
- 🔮 **Webhook Management** - Generic webhook system for external integrations

### Version 2.0 (Long-term)
- 🌟 **Microservices Architecture** - Split into domain-specific microservices
- 🌟 **Event-Driven Architecture** - Message queues and event streaming
- 🌟 **Advanced Analytics** - Business intelligence and reporting APIs
- 🌟 **Multi-tenant Support** - SaaS-ready multi-tenancy
- 🌟 **GraphQL API** - GraphQL endpoints alongside REST APIs
- 🌟 **AI/ML Integration** - Product recommendations and fraud detection

## 📞 Support and Community

### Getting Help
- **Documentation**: Check this README and inline code documentation first
- **Task Management**: Track progress on [Trello Board](https://trello.com/b/AYQPIdZ0/marketivo)
- **Issues**: Use GitHub issues for bug reports and feature requests
- **API Testing**: Use provided Postman collection for API testing

### Contact Information
- **Developer**: [Eren Gaygusuz](https://github.com/erengaygusuz)
- **Project Board**: [Marketivo Trello](https://trello.com/b/AYQPIdZ0/marketivo)
- **Repository**: [GitHub Repository](https://github.com/erengaygusuz/marketivo-backend)

### Community Guidelines
- This is a personal project with open contribution opportunities
- Be respectful and constructive in all interactions
- Provide detailed information when reporting issues
- Check the Trello board before suggesting new features
- Help improve documentation and code quality

## 🏆 Acknowledgments

- **Spring Team** - For the amazing Spring Boot framework
- **Okta** - For enterprise-grade authentication services
- **Stripe** - For secure payment processing APIs
- **MySQL Team** - For the robust database system
- **Docker** - For containerization technology
- **Open Source Community** - For the incredible ecosystem

---

<div align="center">

**🚀 Marketivo Backend - Enterprise E-commerce API**

Built with ❤️ using Spring Boot 3, Java 17, MySQL, and modern backend technologies

[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.0-brightgreen)](https://spring.io/projects/spring-boot)
[![Java](https://img.shields.io/badge/Java-17-orange)](https://openjdk.java.net/projects/jdk/17/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)](https://www.mysql.com/)
[![Docker](https://img.shields.io/badge/Docker-Ready-lightblue)](https://www.docker.com/)
[![Stripe](https://img.shields.io/badge/Stripe-Integrated-purple)](https://stripe.com/)

[🏠 Homepage](https://github.com/erengaygusuz/marketivo-backend) • 
[📚 Documentation](./README.md) • 
[🐛 Report Bug](https://github.com/erengaygusuz/marketivo-backend/issues) • 
[💡 Request Feature](https://github.com/erengaygusuz/marketivo-backend/issues)

**Made with passion for enterprise backend development**

</div>
