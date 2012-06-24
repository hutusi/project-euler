#coding: utf-8

require "test/unit"
#require "benchmark"

$root = ARGV[0]

def answer answer_path
  File.open(answer_path, "r").readlines.last.strip
end

def result ruby_path
  results = `ruby #{ruby_path}`
  results.strip.lines.to_a.last
end

class TestAll < Test::Unit::TestCase

  def testall

problems_path = $root + "/problems"
answers_path = $root + "/answers"
rubies_path = $root + "/ruby"

Dir.foreach(problems_path) do |problem|
  next if problem == "." or problem == ".."
  
  #puts "Solving problem #{problem}" 
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
end

