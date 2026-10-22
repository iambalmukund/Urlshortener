🔗 URL Shortener

A lightweight web application built using Java and JSP that converts long URLs into short, shareable links. The application uses an H2 database to store URL mappings and runs on port 8080.

✨ Features
🔗 Shorten long URLs into compact links.
🚀 Redirect short URLs to their original destinations.
💾 Store URL mappings in an H2 database.
🌐 Access the application through a web browser.
⚡ Simple and user-friendly interface.
🛠️ Tech Stack
Language: Java
Frontend: JSP (JavaServer Pages), HTML, CSS
Database: H2 Database
Server: Java web server running on port 8080
⚙️ Getting Started
Prerequisites

Make sure you have the following installed:

Java Development Kit (JDK)
A compatible Java web server or servlet container, such as Apache Tomcat, if required by your project
Maven or Gradle, if used for dependency management
Installation
Clone the repository
git clone https://github.com/YOUR_USERNAME/UrlShortener.git

Navigate to the project directory
cd UrlShortener

Build the project

If your project uses Maven:

mvn clean package


Deploy the generated WAR file to your configured servlet container, if applicable.

Run the application

Start the application using your configured server and ensure it runs on port 8080.

Open in your browser

Visit:

http://localhost:8080

🔄 How It Works
Enter a long URL into the application.
Generate a shortened URL.
The original URL and its corresponding short identifier are stored in the H2 database.
Open the shortened URL to be redirected to the original destination.
🗄️ Database

The project uses H2 Database to store URL mappings.

Typical stored information includes:

Original URL
Short URL identifier
Generated short link

The exact schema and database configuration depend on the project implementation.

📁 Project Structure

The structure may vary depending on your implementation.

UrlShortener/
├── src/
│   └── main/
│       ├── java/          # Java classes and application logic
│       ├── resources/     # Application configuration
│       └── webapp/        # JSP pages and web resources
├── pom.xml                # Maven configuration, if applicable
└── README.md

🔮 Future Enhancements
Custom short URL aliases
URL click tracking and analytics
QR code generation
Link expiration support
Improved URL validation and error handling
🤝 Contributing

Contributions, suggestions, and bug reports are welcome. Feel free to fork this repository and submit a pull request.

📄 License

Add your preferred open-source license to this project if you intend to distribute it.

⭐ If you find this project useful, consider giving it a star on GitHub!
