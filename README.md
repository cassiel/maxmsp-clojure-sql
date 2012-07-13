# maxmsp-clojure-sql

<img src="https://github.com/downloads/cassiel/maxmsp-clojure-sql/splash.jpg" />

## Introduction

SQL for MaxMSP implemented in Clojure. This can be seen
as a replacement for the old [net.loadbang SQL][loadbang-sql] package,
lifting the JDBC connection and MaxMSP interfacing layers into
Clojure. The user code is much simpler, but there's more library
baggage, including our [Clojure-in-Max][loadbang-clojure] system.

We're supporting Microsoft SQL Server in the main Max script, but it
should be trivially easy to target other databases. Bringing up an
in-store database in Max's search path (like the original [HSQLDB][hsqldb]
version) would require a bit more work; it's on the road map.

## Compatibility

This package was developed in Max 6. It will probably work in Max 5, but
Max's search path will need to be extended to include the directories
`patchers/msql/patchers` and `src` in order to load the patchers and
find the Clojure script files. Java 1.5 or later is needed.

## Installation

A number of JAR files are needed (in Max's `Cycling '74/java/lib`
directory):

- `clojure-1.3.0.jar`
- `java.jdbc-0.2.3.jar`
- `local.microsoft.sqljdbc4-4.0.2206.100.jar`
- `log4j-1.2.16.jar`
- `net.loadbang.clojure-1.2.0.jar`
- `net.loadbang.lib-1.8.0.jar`
- `net.loadbang.scripting-1.1.0.jar`

These files are all included in `distribution.zip` in
[downloads][downloads], alongside the patchers and Clojure source
directory.

## Usage

Open the Max project file `msql.maxproj` (in `patchers/msql`).

Use the Host, Username and Password buttons to configure a
connection. Use Query to enter a complete SQL query. (the Password field
will display the password in plain text while you type it; this is a
weakness in Max's `dialog` object, and could be coded around with a bit
of bespoke Max work.)

Result rows are planted into the `jit.cellblock` object. The first row
is the column names; these are sorted alphabetically. (This is because
the Clojure JDBC library returns an unordered map of fields, so it makes
sense to impose some ordering to make results repeatable.)

## Building

The `net.loadbang` support projects, all hosted in GitHub, are written
in Java and can be built in Maven. They need to be built in sequence
since they aren't centrally hosted. See the `README` for
[net.loadbang.lib][loadbang-lib] for details.

The Microsoft JDBC driver came from [here][ms-jdbc].

This project was built and tested using [Leiningen][lein], which will fetch all
dependencies except the Microsoft driver and Max's `max.jar`. We
"injected" the driver into our local repository using this incantation:

     mvn install:install-file \
         -Dfile=sqljdbc4.jar \
         -DgroupId=local.microsoft \
         -DartifactId=local.microsoft.sqljdbc4 \
         -Dversion=4.0.2206.100 \
         -Dpackaging=jar \
         -DgeneratePom=true

(This is where the `local.microsoft` prefix came from.) The command for
`max.jar` is similar - see the docs for [net.loadbang.lib][loadbang-lib]
for details.

After a `lein deps`, the Clojure code can be exercised via a Slime
connection in Emacs. (The main script relies on `max.jar`, which can be
rolled in similarly to above - see the `net.loadbang.lib` docs - but
you'll probably want to work in the other sources, and leave the
top-level script alone; calls to things like `.outlet` aren't going to
work.)

## Credits

This development effort has been funded by [Ibis][ibis].

## License

Copyright © 2012 Nick Rothwell, nick@cassiel.eu

Distributed under the Eclipse Public License, the same as Clojure.

[loadbang-sql]: http://www.loadbang.net/space/Software/net.loadbang-SQL
[loadbang-clojure]: https://github.com/cassiel/net.loadbang.clojure
[loadbang-lib]: https://github.com/cassiel/net.loadbang.lib
[ibis]: http://www.ibis.dk/
[hsqldb]: http://hsqldb.org/
[downloads]: https://github.com/cassiel/maxmsp-clojure-sql/downloads
[ms-jdbc]: http://www.microsoft.com/en-us/download/details.aspx?id=11774
[lein]: https://github.com/technomancy/leiningen
