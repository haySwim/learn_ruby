# Converts Fahrenheit to Celsius
def ftoc(temperature_in_fahrenheit)
  temperature_in_celsius = (temperature_in_fahrenheit.to_f - 32) * 5 / 9

  temperature_in_celsius
end

# Converts Celsius to Fahrenheit
def ctof(temperature_in_celsius)
  temperature_in_fahrenheit = (temperature_in_celsius.to_f * 9 / 5) + 32.0

  temperature_in_fahrenheit
end
