Canard::Abilities.for(:gymClient) do
  cannot [:create, :destroy, :update], Course
  can [:create, :destroy, :update], Review
  
end
