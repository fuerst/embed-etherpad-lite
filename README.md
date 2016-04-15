# Embed Etherpad Lite pads into Discourse

Embed [Etherpad Lite](https://github.com/ether/etherpad-lite/) pads into [Discourse](https://github.com/discourse/discourse) posts using the Onebox mechanism.

# Installation

Read [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157) at meta.discourse.org.

The configuration line you have to add to your container's app.yml file looks like:

```
- git clone https://github.com/fuerst/embed-etherpad-lite.git
```

# Usage

After installation just insert Etherpad Lite links like https://beta.etherpad.org/p/embed-me-into-discourse into your Discourse posts or comments. The Etherpad will be embedded using the famous and beloved [IFRAME](https://en.wikipedia.org/wiki/HTML_element#Frames) tag and is fully operational.

# Details

The plugin uses the ["Brand new plugin interface"](https://meta.discourse.org/t/brand-new-plugin-interface/8793/88) to change URL's like `http(s)://domain.tld/p/pad-id` into HTML code like `<iframe src='http(s)://domain.tld/p/pad-id'></iframe>`.

That means it also changes your non-Etherpad URL's which looks just like Etherpad Lite links. Please drop me a note if you got a better idea about how to avoid this.
