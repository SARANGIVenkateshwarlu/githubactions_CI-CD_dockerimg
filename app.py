# Import the Flask class from the flask package
from flask import Flask

# Create a Flask application instance
# __name__ helps Flask locate resources like templates and static files
app = Flask(__name__)

# Define a route for the root URL ("/")
# This function will be executed when a user accesses the home page
@app.route("/")
def home():
    # Return a simple response to the client
    return "Hello World!"

# Run the Flask application only if this script is executed directly
# This prevents the app from running when imported as a module
if __name__ == "__main__":
    # Start the Flask development server
    # host="0.0.0.0" makes the app accessible from any network interface
    # port=5000 specifies the port number
    app.run(host="0.0.0.0", port=5000)