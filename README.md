# cljs-starter

Starter project for ClojureScript static site project.

This project uses grunt as the primary build tool as this currenlty
provides better integration with broader web ecosystem.

* LiveReload - auto reload page when source changes
* Bower - download additional javascript depencencies

# TODO

* Less integration for bootstrap customizations
* Release builds
  * Replace dev bower_components with release urls
  * ClojureScript requires small but anoying changes to index.html for
loading cljs, probably a grunt post processing step that can do this
kinda thing more cleanly then duplicating index.html as others appear
to do.


# Usage

```
npm install
grunt
```

## License

Copyright © 2014 Kurt Harriger

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
