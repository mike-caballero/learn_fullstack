from flask import Flask
from flask_cors import CORS

def create_app():
    app = Flask(__name__)
    CORS(app)

    @app.route('/api/')
    def hello_world():
        return 'Hello World from the backend!'

    return app