import requests
from bs4 import BeautifulSoup

headers = {"User-agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}

def outfitters():
    url = "https://outfitters.com.pk/collections/men-shirts"
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')

    # sc_titlesDiv = soup.find_all("div", {"class": "product-bottom"})
    sc_titles = soup.select('.product-bottom a span')
    sc_price = soup.select(".price-box .price-sale .old-price span")
    sc_img = soup.select(".product-grid-image img")

    

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
                'brand':'outfitters'
            }
        )
    # print(liste)
    return liste
# outfitters()

    


def jj():
    url = "https://www.junaidjamshed.com/mens/kameez-shalwar.html"
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')

    sc_titles = soup.select(".products-grid ol .product-item .product-item-details .product-item-name a")
    sc_price = soup.select("span .price")
    sc_img = soup.find_all("img", {"class": "product-image-photo"})

    # print(sc_img[0]['data-src'])products wrapper grid products-grid
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
                'brand':'jj'
            }
        )
    # print(liste)
    return liste
jj()

def getMenClothes():
    return [{'outfitters':outfitters()}, {'jj':jj()}]

# getWomenData()