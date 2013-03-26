# Redirection

In web applications, after some simple or multi-step workflow, we need to return the user
back to the page where he initially started or to any other page.

This gem does nothing more but providing this functionality.

## Installation

Add this line to your application's Gemfile:

    gem 'redirection', git: 'https://github.com/dalizard/redirection.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redirection

## Usage

Suppose there is a web app with 'Contact Us' link in the footer. We want the user to be
redirected to the page he was on before clicking the 'Contact Us' link.

``` rails
<%= link_to 'Contact us', new_contact_path(referrer_param: current_path) %>
```

In the view we'd have:

``` rails
<%= form_for ... do |f| %>
  <%= hidden_referrer_input_tag %>
  ...
<% end %>
```

In the controller:

``` ruby
def create
  ...
  redirect_to back_or_default
end
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

