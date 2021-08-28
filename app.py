from python_modules.men_clothes import getMenClothes
from python_modules.women_shoes import getWomenShoes
from flask import Flask
from flask.json import jsonify
from python_modules.women_clothes import *
from python_modules.global_scripts import *
from flask import request

app = Flask(__name__)


@app.route('/', methods=['GET'])
def hello_world():
    message = 'flask running'
    return message


@app.route('/women_cloths', methods=['GET'])
def womenCloths():
    return jsonify({
        'list': getWomenClothes()
    })


@app.route('/women_shoes', methods=['GET'])
def womenShoes():
    return jsonify({
        'list': getWomenShoes()
    })


@app.route('/men_cloths', methods=['GET'])
def menCloths():
    return jsonify({
        'list': getMenClothes()
    })


@app.route('/getDetails', methods=['GET'])
def getDetails():
    link = request.args.get('link')
    brand = request.args.get('brand')
    return jsonify({
        'list': getItemDetails(link, brand)
    })


if __name__ == '__main__':
    app.run(debug=True)
