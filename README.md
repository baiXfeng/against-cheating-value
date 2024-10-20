# Anti-cheating-value
Anti-cheating-value is a plugin that prevents cheat tools from modifying sensitive data in the game memory.

# How to use
- First, enable the Anti-cheating-value plugin in Godot.
- Override the setter and getter for the sensitive data in your game.
- Point the getter and setter for the sensitive data to the corresponding variables provided by the Anti-cheating-value plugin.

# Notice
- The anti-cheat variables are accessed in the form of key-value pairs, so please ensure the uniqueness of the keys to avoid mistakenly overwriting the correct data.
- Using this plugin may cause additional runtime performance overhead, so please control where to use it.

<iframe src="https://youtu.be/lVJk9zAZP1w" width="700" height="472" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>