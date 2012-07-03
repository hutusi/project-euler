#coding: utf-8

class Prime
  attr_reader :primes

  def Prime.is? num
    sqr = Math.sqrt(num).round
    2.upto(sqr) {|x| return false if num % x == 0}
    true
  end

  def initialize
    @primes = [2, 3]
    reset!
  end
  
  def reset!
    @cursor = 0
  end

  def next!
    if @primes.length > @cursor
      prime = @primes[@cursor] 
    else
      prime = @primes.last + 2
      while not is_prime? prime
        prime += 2
      end
      @primes << prime
    end

    @cursor += 1
    prime
  end

private

  def is_prime? n
    @primes.each do |x|
      return false if n % x == 0
      return true if x * x > n 
    end
    true
  end

end

#p = Prime.new
#10000.times { p.next! }
#puts p.primes.last
