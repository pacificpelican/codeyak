**codeYak**
**http://codeyak.pacificio.com**
v0.5.0

# README

a chat app for programmers 

copyright April 2017 by [Dan McKeown](http://danmckeown.info)

[Licensed](LICENSE) under the ISC [License](https://opensource.org/licenses/ISC).

This app is a [Rails 5](http://rubyonrails.org/) chat app using [Action Cable](http://edgeguides.rubyonrails.org/action_cable_overview.html).

The JavaScript parts use [jQuery](http://jquery.com) and are written in [CoffeeScript](http://coffeescript.org/).

The front end for codeYak was originally posted on [a CodePen](http://codepen.io/pacificpelican/pen/NpEVdq).

The first [live web version of codeYak](http://codeyak.pacificio.com) was deployed in April 2017 using [CentOS](https://www.centos.org/) on [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-deploy-rails-apps-using-unicorn-and-nginx-on-centos-6-5).

Features of version 0.5.0:

* Random hash user name which user can optionally replace

* Typing UI for creating chat messages uses form_for

* Messages are broadcast to all users under ideal conditions and are appended to the page via the DOM when received

* Data preserved only until last browser that was connected when message was sent is closed
