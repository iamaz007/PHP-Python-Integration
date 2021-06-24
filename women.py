import requests
from bs4 import BeautifulSoup

headers = {"User-agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}

def ethnic():
    url = "https://ethnic.pk/collections/mid-season-sale-up-to-50-off"
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')

    sc_titles = soup.find_all("a", {"class": "product-title"})
    sc_price = soup.find_all("span", {"class": "money"})
    sc_img = soup.find_all("a", {"class": "product-grid-image"})

    # print(sc_titles[0])
    liste = []
    for index in range(len(sc_titles)):
        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'price': sc_price[index].get_text().strip(),
                'image': sc_img[index].find('img')['src'],
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

    # print(sc_titles[0])
    liste = []
    for index in range(len(sc_titles)):
        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'price': sc_price[index].get_text().strip(),
                'image': sc_img[index]['src'],
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

    # print(sc_img[0]['data-src'])
    # print(len(sc_titles))
    # print(len(sc_price))
    # print(len(sc_img))
    liste = []
    for index in range(len(sc_titles)):
        if sc_img[index].has_attr('data-src'):
            img = sc_img[index]['data-src']
        else:
            img = sc_img[index]['src']
        liste.append(
            {
                'title': sc_titles[index].get_text().strip(),
                'price': sc_price[index].get_text().strip(),
                'image': img,
            }
        )
    # print(liste)
    return liste

def getWomenData():
    return [ethnic(), engine(), khaadi()]

# getWomenData()