# Importing flask module in the project is mandatory
# An object of Flask class is our WSGI application.
from flask import Flask
 
# Flask constructor takes the name of 
# current module (__name__) as argument.
application = Flask(__name__)
 
# The route() function of the Flask class is a decorator, 
# which tells the application which URL should call 
# the associated function.
@application.route('/')
# ‘/’ URL is bound with hello_world() function.
def hello_world():
    return "<h1>Hii, Welcome to the Learning Containerization using Docker. - Kinnar Chowdhury</h1>"
 
# main driver function
if __name__ == '__main__':
 
    # run() method of Flask class runs the application 
    # on the local development server.
    application.run(debug=True)