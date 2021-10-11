require_relative 'converter'
class IOManager

    def self.input_initial_degree

        temp = nil

        loop do
            puts 'enter degree value:'
            temp = gets.chomp
            break if temp.match(Regexp.new(/\A[-+]?[0-9]*\.?[0-9]+\Z/))
        end

        temp.to_f
    end
    
    def self.input_source_scale
        source_scale = nil
        loop do
            puts 'Enter source scale(C/F/K):'

            source_scale = gets.chomp.upcase
            break if ["C", "F", "K"].include? source_scale
        end

        return source_scale 
    end

    def self.input_target_scale
        target_scale = nil
        loop do
            puts 'Enter target scale(C/F/K):'

            target_scale = gets.chomp.upcase
            break if ["C", "F", "K"].include? target_scale
        end

        return target_scale 
    end

    def self.launch
        degrees = input_initial_degree
        source_scale = input_source_scale
        target_scale = input_target_scale
        result = Converter.conversion(degrees, source_scale, target_scale)
        puts "#{degrees} #{source_scale} = #{result} #{target_scale}"
    end
end

puts IOManager.launch