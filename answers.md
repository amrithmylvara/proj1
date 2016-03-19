# Q0: Why is this error being thrown?

There's no pokemon model created at the moment, so rails can't call a create from it.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? 

The common factor between all pokemon that appear is that they are all wild, and not controlled or owned by any trainers. The random pokemon are appearing because in home_controller.rb, @pokemon is set to have a trainer_id of nil.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a button with the label "Throw a Pokeball!", in the process calling the capture method in the pokemon controller with the pokemon id from the parameters hashmap.

# Question 3: What would you name your own Pokemon? 

Swaggy P

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I redirected to the current trainer, using an @trainer instance variable I created. It's okay not to have a path here because rails would redirect back to the page it was just on and show that.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This sentence will flash an error message, taken from the errors field of pokemon. By using full_message.to_sentence, the error becomes readable in a string format.

# Give us feedback on the project and decal below!

This project was pretty cool. Got random bugs sometimes (like my throw a pokeball button disappeared without me changing anything) that were kinda frustrating, but the TAs were super helpful throughout. Thanks so much!

# Extra credit: Link your Heroku deployed app
