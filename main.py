from flask import Flask
from flask.json import jsonify
import requests
from bs4 import BeautifulSoup
import smtplib
from python_modules.women import *

headers = {
    "User-agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}

URL = 'https://shopecs.com/apparel/eastern-wear'

app = Flask(__name__)

@app.route('/',methods=['GET'])
def hello_world():
    page = requests.get(URL, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')
    titles = soup.find_all("a", {"class": "product-item-link"})
    
    arr = []
    for x in range(len(titles)):
        title = titles[x].get_text().strip()
        arr.append(title)

    return jsonify({
        'list': arr
    })


@app.route('/women',methods=['GET'])
def women():
    return jsonify({
        'list': getWomenData()
    })
    

if __name__ == '__main__':
    app.run(debug=True)