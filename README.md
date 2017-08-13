# README

## Setup
- I used ruby 2.3.4 to build this app. Ruby 2.2.2 is the minimum one can use.
- The app is built using Rails 5.1.3
- Clone this repo
- cd into the repo folder
- bundle
- db:create db:migrate db:seed
- Run `rails s` to run a local server
- Navigate to http://localhost:3000

## Things I'd do given more time:
- SO MUCH!
- I wrote some tests I'd implement the functionality of, but most of them won't run. Still, even though I don't
  exactly TDD with a test-first mentality, writing tests does make one think about the functionality that needs
  to be--or can be--implemented.
- I'd add SO many more tests
- At one point, I'd actually written up CRUD methods for the controllers, but I decided that giving you close to
  "real" code was going to take too many tests and too much time.
I have CS homework! :-)
- The UI is definitely something I'd improve. As it is, I wanted to at least group by style, but in the end,
	I again decided that I wasn't ready to sort all of that out here.
- Generally, speaking, I'd have more guards for making sure I had proper data, that receiving improper data was
  handled, and did I mention the tests?
- Also, I'd add/use rubocop.
