#!/bin/bash

api_key=2d4853a686162f9a9057e1db1d7dad9b
city_id=1185241
url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}"
curl ${url} -s -o ~/.cache/weather.json
