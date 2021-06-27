# Data Scrapper with Python and PHP integration


## System Flow

- create scraper in python
- save required info in JSON form
- create restApi in python (flask)
- call that restApi in PHP
- send JSON data as response in PHP
- display data in PHP website

To avoid page refresh, I have used jQuery AJAX method to request to PHP, then PHP call to the python Flask API.
