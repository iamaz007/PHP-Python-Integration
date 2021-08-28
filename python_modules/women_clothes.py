import requests
from bs4 import BeautifulSoup
from python_modules.global_scripts import *

headers = {
    "User-agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}


def ethnic():
    url = "https://ethnic.pk/collections/mid-season-sale-up-to-50-off"
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')

    sc_titles = soup.find_all("a", {"class": "product-title"})
    sc_price = soup.find_all("span", {"class": "money"})
    sc_img = soup.find_all("a", {"class": "product-grid-image"})

    liste = []
    for index in range(len(sc_titles)):

        if findString(sc_titles[index]['href'], "https") or findString(sc_titles[index]['href'], "http"):
            link = sc_titles[index]['href']
        else:
            link = "https://ethnic.pk/"+sc_titles[index]['href']

        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'link': link,
                'price': sc_price[index].get_text().strip(),
                'image': sc_img[index].find('img')['src'],
                'brand': 'ethnic'
            }
        )
    # print(liste)
    return liste


def engine():
    url = "https://www.generation.com.pk/sale.html"
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')

    sc_titles = soup.find_all("a", {"class": "product-item-link"})
    sc_price = soup.find_all("span", {"class": "price"})
    sc_img = soup.find_all("img", {"class": "product-image-photo"})

    liste = []
    for index in range(len(sc_titles)):

        if findString(sc_titles[index]['href'], "https") or findString(sc_titles[index]['href'], "http"):
            link = sc_titles[index]['href']
        else:
            link = "https://www.generation.com.pk"+sc_titles[index]['href']

        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'link': link,
                'price': sc_price[index].get_text().strip(),
                'image': sc_img[index]['src'],
                'brand': 'engine'
            }
        )
    # print(liste)
    return liste


def khaadi():
    url = "https://pk.khaadi.com/sale/ready-to-wear.html"
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')

    sc_titles = soup.find_all("a", {"class": "product-item-link"})
    sc_price = soup.find_all("span", {"class": "price"})
    sc_img = soup.find_all("img", {"class": "product-image-photo"})

    liste = []
    for index in range(len(sc_titles)):
        if sc_img[index].has_attr('data-src'):
            img = sc_img[index]['data-src']
        else:
            img = sc_img[index]['src']

        if findString(sc_titles[index]['href'], "https") or findString(sc_titles[index]['href'], "http"):
            link = sc_titles[index]['href']
        else:
            link = "https://www.generation.com.pk"+sc_titles[index]['href']

        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'price': sc_price[index].get_text().strip(),
                'link': link,
                'image': img,
                'brand': 'khaadi'
            }
        )
    # print(liste)
    return liste


def getWomenClothes():
    return [ethnic(), engine(), khaadi()]


# khaadi()
# getWomenClothes()
