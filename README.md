# Sparta OpenWeather API
## Aim
Correctly parse data to a program using an API, specifically: [OpenWeather](https://openweathermap.org/)
Once the data is parsed, create some test for the code using services .rb files.

## Installation

To install: copy the following line into the desired destination directory

`git clone git@github.com:bjorobinson/sparta-openweather-api.git`

Within the root directory, `sparta-openweather-api`.

Finally, still in the root directory, run the tests using `rspec`

## Tests

The tests were divided up into 3 different sets to test different parts of the data, and hence 3 different services. These are separated in the output using rspecs `context` keyword:

* Coordinate services
  * should return longitude as a float
  * should return latitude as a float
  * should verify/validate it's London by checking its longitude and latitude vs set coordinates
* Weather Services
  * should verify by returning an id of 803
  * should have a main that summarises the weather with a String
  * should have a description of the weather with a String
* Main services
  * should return temp as a float
  * should return temp_min as a float
  * should return temp_max as a float
  * should contain temp > temp_min
  * should contain temp < temp_max
