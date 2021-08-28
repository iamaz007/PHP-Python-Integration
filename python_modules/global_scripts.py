import re
from bs4 import BeautifulSoup
from flask import json
import requests
from lxml import html

headers = {
    "User-agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'}


def findString(haystack, needle):
    if haystack.find(needle) != -1:
        return True
    return False


def getItemDetails(link, brand):
    data = {}

    if brand == "khaadi":
        page = requests.get(link, headers=headers)
        soup = BeautifulSoup(page.content, 'html.parser')

        data['title'] = soup.select(".page-title span")[0].get_text().strip()
        data['oldPrice'] = soup.select("span[data-price-type='oldPrice'] .price")[0].get_text().strip()
        data['newPrice'] = soup.select("span[data-price-type='finalPrice'] .price")[0].get_text().strip()
        data['stock'] = soup.select(".stock span:last-child")[0].get_text().strip()
        details = []
        tempDetails = soup.find("div",{"id":"Details"}).find_all("div")
        for index in range(len(tempDetails)):
            details.append(tempDetails[index].get_text().strip())
        data['desc'] = details

    return data