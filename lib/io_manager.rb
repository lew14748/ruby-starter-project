require_relative 'converter'
class IOManager
  @current_state = 0

  def go_to_next_state
    @current_state += 1
  end

  def input_initial_degree
    puts 'Enter degree value:'
    temp = gets.chomp
    if temp.match(Regexp.new(/\A[-+]?[0-9]*\.?[0-9]+\Z/))
      go_to_next_state
      temp.to_f
    else
      puts 'Seems like yo entered incorrect source scale'
      false
    end
  end

  def input_source_scale
    puts 'Enter source scale(C/F/K):'

    source_scale = gets.chomp.upcase
    if %w[C F K].include? source_scale
      go_to_next_state
      source_scale
    else
      puts 'Seems like yo entered incorrect source scale'
      false
    end
  end

  def input_target_scale
    puts 'Enter target scale(C/F/K):'

    target_scale = gets.chomp.upcase
    if %w[C F K].include? target_scale
      go_to_next_state
      target_scale
    else
      puts 'Seems like you entered incorrect target scale'
      false
    end
  end

  def launch
    @current_state = 0
    degrees = 0
    source_scale = nil
    target_scale = nil
    loop do
      case @current_state
      when 0
        degrees = input_initial_degree
      when 1
        source_scale = input_source_scale
      when 2
        target_scale = input_target_scale
      when 3
        result = Converter.conversion(degrees, source_scale, target_scale)
        puts "#{degrees} #{source_scale} = #{result} #{target_scale}"
        return result
      end
    end
  end
end
