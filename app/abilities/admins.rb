Canard::Abilities.for(:admin) do
  can [:create,:update,:destroy], Course
  
  can [:create,:update,:destroy], Review
  
end
