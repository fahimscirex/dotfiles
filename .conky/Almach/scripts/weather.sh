#!/bin/bash

api_key=e46d6b1c945f2e9983f073xxxxxxxxxx
city_id=16xxxxx
url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}"
curl ${url} -s -o ~/.cache/weather.json