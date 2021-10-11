class Converter
    public
    def self.converts_from_celsius_to_kelvin(degrees)
        (degrees + 273.15).round(2)
    end

    def self.converts_from_kelvin_to_celsius(degrees)
        (degrees - 273.15).round(2)
    end

    def self.converts_from_fahrenheit_to_celsius(degrees)
        ((degrees - 32) / 1.8).round(2)
    end

    def self.converts_from_celsius_to_fahrenheit(degrees)
        (degrees * 1.8 + 32).round(2)
    end

    def self.converts_from_kelvin_to_fahrenheit(degrees)
        ((degrees - 273.15) * 1.8 + 32).round(2)
    end

    def self.converts_from_fahrenheit_to_kelvin(degrees)
        ((degrees - 32) / 1.8 + 273.15).round(2)
    end
end
