The list of features in this current program are small. However, they're already more than a handful.
We have a ruby program that connects to the 200 words a day API and posts a text. It uses environment variables to store the API key. It uses an interactive, command-line interface (CLI) to take your words and turn them into something postable. It writes the words to a file when you hit done.
How could it be better?
Currently, it doesn't allow you to publish your words live on 200. It posts a draft, which requires you to login and edit it and publish it live.
Also, the text styles are limited to plain text because of the CLI interface and markdown not working when posting via the API. ( it could be something I'm missing ).
What's cool is the ability to write in my own, focused writing environment and get the results of publishing text to the web and maintaining my streak. Emoji input in the terminal in VSCode doesn't seem to work, but I think it might work using iTerm or Hyper. Will check those.
Also, I could be saving every line on return to give it an autosave feature, but it doesn't seem as imporatant.
