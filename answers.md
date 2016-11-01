# Q0: Why is this error being thrown?
There is no Pokemon controller

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the home controller index method, it assigns trainerless_pokemon to all the Pokemons without a trainer and randomly picks 1 of them. We made the pokemons in the seeds.rb file. All the possible Pokemon do not have a trainer,has a name, and have health of 100.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
 "button_to" is looking for a /capture using POST and then id: @pokemon passes in the pokemon's id to that POST request.

# Question 3: What would you name your own Pokemon?
pokebowl

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect_to trainer_path(:id => @pokemon.trainer.id) The path needed the id of the trainer

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It goes to the pokemon model to look at the pokemn validates and see which one is erroring and returns that.

# Give us feedback on the project and decal below!
Nice!

# Extra credit: Link your Heroku deployed app
https://railsdecal-pokedex.herokuapp.com/