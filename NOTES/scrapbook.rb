 
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

# def lambda_demo_method
#   lambda_demo = lambda { return "Will I print?" }
#   lambda_demo.call
#   "Sorry - it's me that's printed."
# end

# puts lambda_demo_method
# # Output
# # Sorry - it's me that's printed.

# # (Notice that the lambda returns back to the method in order to complete it.)


# ------------------------------------------------------------------


