recipes = %w{node starter-kit}

recipes.flatten.each do |recipe|
  include_recipe recipe
end
