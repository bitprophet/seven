class Tree
  def initialize(hash)
    @name = hash.keys.first
    children = hash.values.first # another hash
    unless children.empty?
      @children = children.map {|name, kids| Tree.new({name => kids})}
    end
  end
end

sample = {:grandpa => {:dad => {:kid => {}}}}

p Tree.new(sample)
