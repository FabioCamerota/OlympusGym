Canard::Abilities.for(:gymClient) do
  can [:create], Course
  cannot [:destroy, :update], Course
  can [:create, :destroy, :update], Review
  
end
