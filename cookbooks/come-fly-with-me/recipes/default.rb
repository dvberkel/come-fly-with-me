recipes = %w{node}

recipes.flatten.each do |recipe|
  include_recipe recipe
end
