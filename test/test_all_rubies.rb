#coding: utf-8

require "test/unit"

$root = ARGV[0]

def right?(answer_path, ruby_path)
  answer = File.open(answer_path, "r").readlines.last.strip
  results = `ruby #{ruby_path}`
  result = results.strip.lines.to_a.last
  #puts "a:[#{answer}], r:[#{result}]"
  answer == result
end 

class TestAll < Test::Unit::TestCase

  def testall

problems_path = $root + "/problems"
answers_path = $root + "/answers"
rubies_path = $root + "/ruby"

Dir.foreach(problems_path) do |problem|
  next if problem == "." or problem == ".."
  answer_path = answers_path + "/" + problem
  ruby_path = rubies_path + "/" + problem + ".rb"
  if not File.exist? answer_path
    puts "answer for problem #{problem} is not exist"
  elsif not File.exist? ruby_path
    assert(false, "solution for problem #{problem} is not exist")
  else 
    assert(right?(answer_path, ruby_path))
  end
end

  end
end

