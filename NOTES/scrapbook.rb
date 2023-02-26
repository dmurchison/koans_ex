 
# # Notes and Scrapbook

# ## Difference between procs and lambdas

# def proc_demo_method
#   proc_demo = Proc.new { return "Only I print!" }
#   proc_demo.call
#   "But what about me?" # Never reached
# end

# puts proc_demo_method 
# # Output 
# # Only I print!

# # (Notice that the proc breaks out of the method when it returns the value.)



class DiceGame
  
  attr_accessor :values

  def roll(num)
    @values = []
    num.times { @values << rand(1..6) }
  end

end

dice = DiceGame.new
dice.roll(5)
first_roll = [1,2,3,4,5]
dice.roll(5)
second_roll = [1,2,3,4,5]

p first_roll.object_id == second_roll.object_id

class AllMessageCatcher
  def method_missing(method_name, *args, &block)
    "Someone called #{method_name} with <#{args.join(", ")}>"
  end
end

catcher = AllMessageCatcher.new
p catcher.foobar
p catcher.foobaz(1)
p catcher.sum(1,2,3,4,5,6)