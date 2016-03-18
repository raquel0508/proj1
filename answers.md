# Q0: Why is this error being thrown?

	We didn't have a Pokemon table in the database. We also had to generate a pokemon.rb model. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

	In the home_controller, we're instantiating pokemon and picking a random pokemon from the list of pokemon in seeds.rb. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

	The following line creates a button "Throw a Pokeball!" When that button is clicked, we want to run a function called capture. The capture_path is directing to the capture function in pokemon and taking in the pokemon's id as a parameter for the capture function. 

# Question 3: What would you name your own Pokemon?

	I would name my own pokemon FluffyMaster. 

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

	I passed the trainer_path, which needed the pokemon's trainer_id as a parameter.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

	In application.html.erb, it looks like it's calling messages.html.erb and navigation.html.erb to send a response back to the browser.

# Give us feedback on the project and decal below!

	The project was fun! One thing I would have to say is to be more clear on the README instructions because in Part 0 I thought we were supposed to fix the uninitialized constant before moving onto part 1, so I started creating a table for pokemon early on. However, when I started reading part 1, I realized that part 1 had already told me how to fix the uninitialized constant and add attributes that I didn't add beforehand, so I deleted the pokemon migration and restarted it. Also may be helpful to reiterate that a controller should have a plural name such as "Pokemons" instead of "Pokemon." But overall, the project was very well-made and I enjoyed it! 

# Extra credit: Link your Heroku deployed app
