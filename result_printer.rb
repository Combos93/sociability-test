class ResultPrinter
  def initialize(results_path)
    unless File.exist?(results_path)
      abort "We couldnt find  #{results_path} file."
    end
    file = File.new(results_path, "r:UTF-8")
    @results = file.readlines
    file.close
  end

  def print_result(points)
    puts "Your result is (answers 'yes' - #{points}):"
    case
      when points >= 30
        puts @results[0]
      when points >= 25
        puts @results[1]
      when points >= 19
        puts @results[2]
      when points >= 14
        puts @results[3]
      when points >= 9
        puts @results[4]
      when points >= 4
        puts @results[5]
      else
      puts @results[6]
    end
  end
end
