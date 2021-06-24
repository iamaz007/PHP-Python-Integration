import requests
from bs4 import BeautifulSoup
import smtplib

headers = {"User-agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}


def ecs():
    url = 'https://shopecs.com/women'
    page = requests.get(url, headers=headers)

    soup = BeautifulSoup(page.content, 'html.parser')

    titles = soup.find_all("a", {"class": "product-item-link"})
    arr = []
    for x in range(len(titles)):
        title = titles[x].get_text().strip()
        arr.append(title)
    print(arr)

ecs()

def outfitter():
    url = 'https://outfitters.com.pk/collections/women-sale-2020'
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')
    titles = soup.find_all("a", {"class": "product-title"})
    
    liste = []
    for index in range(len(titles)):
        liste.append(titles[index].find('span').get_text().strip())
    final_new_menu = list(dict.fromkeys(liste))
    print(final_new_menu)
    print(len(titles))
    print(len(liste))
    print(len(final_new_menu))
# outfitter()

def engine():
    url = 'https://engine.com.pk/collections/women-sale-1'
    page = requests.get(url, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')

    titles = soup.find_all("a", {"class": "product-title"})
    liste = []
    for index in range(len(titles)):
        liste.append(titles[index].find('span').get_text().strip())
    final_new_menu = list(dict.fromkeys(liste))
    print(final_new_menu)
    print(len(titles))
    print(len(liste))
    print(len(final_new_menu))
# engine()