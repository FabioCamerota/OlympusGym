Canard::Abilities.for(:gymClient) do
  cannot [:create, :destroy, :update], Course

  can [:create, :destroy, :update], Review
  
  cannot [:create, :update, :destroy], Comunication

  cannot [:seeAll, :destroyAll], Reservation
  
end
