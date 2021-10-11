require './../lib/converter'


RSpec.describe Converter do
    describe 'converts_from_kelvin_to_celsius' do
        context 'Conversion from 320 degrees Kelvin to Celsius' do
            it { expect(Converter.converts_from_kelvin_to_celsius(320)).to eq 46.85 } 
        end
    end

    describe 'converts_from_celsius_to_kelvin' do
        context 'Conversion from 46.85 degrees Celsius to Kelvin' do
            it { expect(Converter.converts_from_celsius_to_kelvin(46.85)).to eq 320 } 
        end
    end    

    describe 'converts_from_fahrenheit_to_celsius' do
        context 'Conversion from 10 degrees Fahrenheit to Celsius' do
            it { expect(Converter.converts_from_fahrenheit_to_celsius(10)).to eq -12.22 }
        end
    end

    describe 'converts_from_celsius_to_fahrenheit' do
        context 'Conversion from -12.22 degrees Celsius to Fahrenheit' do
            it { expect(Converter.converts_from_celsius_to_fahrenheit(-12.22)).to eq 10 }
        end
    end

    describe 'converts_from_fahrenheit_to_kelvin' do
        context 'Conversion from -459.67 degrees Fahrenheit to Kelvin' do
            it { expect(Converter.converts_from_fahrenheit_to_kelvin(-459.67)).to eq 0 }
        end
    end

    describe 'converts_from_kelvin_to_fahrenheit' do
        context 'Conversion from 0 degrees Kelvin to Fahrenheit' do
            it { expect(Converter.converts_from_kelvin_to_fahrenheit(0)).to eq -459.67 }
        end
    end
    
    describe()
    describe 'conversion' do 
        context 'Conversion from 10 degrees Celsius to Fahrenheit' do
            it { expect(Converter.conversion(10, "C", "F")).to eq 50 }
        end
    end

    describe 'conversion' do 
        context 'Conversion from 10 degrees Celsius to Kelvin' do
            it { expect(Converter.conversion(10, "C", "K")).to eq 283.15 }
        end
    end
    
    describe 'conversion' do 
        context 'Conversion from 10 degrees Kelvin to Fahrenheit' do
            it { expect(Converter.conversion(10, "K", "F")).to eq -441.67 }
        end
    end
    
    describe 'conversion' do 
        context 'Conversion from 10 degrees Kelvin to Celsius' do
            it { expect(Converter.conversion(10, "K", "C")).to eq -263.15 }
        end
    end
    
    describe 'conversion' do 
        context 'Conversion from 10 degrees Fahrenheit to Celsius' do
            it { expect(Converter.conversion(10, "F", "C")).to eq -12.22 }
        end
    end
    
    describe 'conversion' do 
        context 'Conversion from 10 degrees Fahrenheit to Kelvin' do
            it { expect(Converter.conversion(10, "F", "K")).to eq 260.93 }
        end
    end
end