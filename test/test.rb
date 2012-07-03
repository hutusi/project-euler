#coding: utf-8

$root = ARGV[0].to_s
$rb = ARGV[1].to_s

puts "start..."
puts $root
puts $rb

def answer answer_path
  File.open(answer_path, "r").readlines.last.strip
end

def result ruby_path
  results = `ruby #{ruby_path}`
  results.strip.lines.to_a.last
end

require "test/unit"

class TestRb < Test::Unit::TestCase

  def test_file
  	problems_path = $root + "/problems"
    answers_path = $root + "/answers"
    rubies_path = $root + "/ruby"  
    problem = $rb  

    p1 = Time.now
    answer_path = answers_path + "/" + problem
    ruby_path = rubies_path + "/" + problem + ".rb"
    if not File.exist? answer_path
      puts "answer for problem #{problem} is not exist"
    elsif not File.exist? ruby_path
      assert(false, "solution for problem #{problem} is not exist")
    else
      assert_equal(answer(answer_path), result(ruby_path), "Solution of problem #{problem} is not equal to right answer.") 
    end
    p2 = Time.now
    puts "Solving problem #{problem} costs #{p2 - p1}"

  end
end

