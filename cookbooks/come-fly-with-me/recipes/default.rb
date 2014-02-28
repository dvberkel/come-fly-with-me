recipes = %w{}

recipes.flatten.each do |recipe|
  include_recipe recipe
end
