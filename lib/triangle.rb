

class Triangle
  
  attr_accessor :sides
  
  def initialize(a,b,c)
    @sides = []
    @sides << a.to_f
    @sides << b.to_f
    @sides << c.to_f
  end
  
  
  def kind 
    
    perms = @sides.permutation.to_a 
    
    if @sides.any?{|side| side < 0} || perms.any?{|perm| perm[0] + perm[1] < perm[2]}
      puts "nope"
       
    else
      
      if sides.uniq.length == 1
        kind = "equilateral"
      elsif sides.uniq.length == 2
      	kind = "isosceles"
      else
        kind = "scalene"
      end

    end 
    kind
  end
  
end

class TriangleError < StandardError
end
