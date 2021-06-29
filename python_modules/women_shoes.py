import requests
from bs4 import BeautifulSoup

headers = {"User-agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}

def ecs():
    url = 'https://shopecs.com/women'
    page = requests.get(url, headers=headers)

    soup = BeautifulSoup(page.content, 'html.parser')

    sc_titles = soup.find_all("a", {"class": "product-item-link"})
    sc_price = soup.find_all("span", {"class": "price"})
    sc_img = soup.find_all("img", {"class": "product-image-photo"}) 

    liste = []
    for index in range(len(sc_titles)):
        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'price': sc_price[index].get_text().strip(),
                'image': sc_img[index]['data-src'],
                'brand':'ecs'
            }
        )
    # print(liste)
    return liste

# ecs()

def stylo():
    url = 'https://stylo.pk/collections/bridal-shoes'
    page = requests.get(url, headers=headers)

    soup = BeautifulSoup(page.content, 'html.parser')

    sc_titles = soup.find_all("a", {"class": "grid-view-item__title"})
    sc_price = soup.find_all("span", {"class": "product-price__price"})
    sc_img = soup.find_all("img", {"class": "grid-view-item__image"}) 

    liste = []
    for index in range(len(sc_titles)):
        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'price': sc_price[index].get_text().strip(),
                'image': sc_img[index]['src'],
                'brand':'stylo'
            }
        )
    # print(liste)
    return liste

# stylo()
def getWomenShoes():
    return [ecs(), stylo()]
