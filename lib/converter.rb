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

    def self.conversion_from_celsius(degrees, target_scale)
        case target_scale
        when "F"
            converts_from_celsius_to_fahrenheit(degrees)
        when "K"
            converts_from_celsius_to_kelvin(degrees)
        end
    end

    def self.conversion_from_kelvin(degrees, target_scale)
        case target_scale
        when "C"
            converts_from_kelvin_to_celsius(degrees)
        when "F"
            converts_from_kelvin_to_fahrenheit(degrees)
        end
    end

    def self.conversion_from_fahrenheit(degrees, target_scale)
        case target_scale
        when "C"
            converts_from_fahrenheit_to_celsius(degrees)
        when "K"
            converts_from_fahrenheit_to_kelvin(degrees)
        end
    end

    def self.conversion(degrees, source_scale, target_scale)
        case source_scale
        when "K"
            conversion_from_kelvin(degrees, target_scale)
        when "F"
            conversion_from_fahrenheit(degrees, target_scale)
        when "C"
            conversion_from_celsius(degrees, target_scale)
        end
    end
end

puts Converter.conversion(10, "C", "F")