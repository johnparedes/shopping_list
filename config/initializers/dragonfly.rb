require 'dragonfly/rails/images'

app = Dragonfly[:shopping_list]
app.configure_with(:imagemagick)
app.configure_with(:rails)
