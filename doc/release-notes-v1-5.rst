=========================
Duktape 1.5 release notes
=========================

Release overview
================

FIXME.

Upgrading from Duktape 1.4.x
============================

No action (other than recompiling) should be needed for most users to upgrade
from Duktape v1.3.x.  Note the following:

* When serializing duk_tval numbers, the debugger implementation now uses
  plain integer dvalues instead of full IEEE number dvalues when it's safe to
  do so without loss of information.  For example, if you Eval "1+2" the
  result (3) is serialized as a plain integer.  This is allowed by the
  debugger protocol but hasn't been done before, so it may have an effect on
  a debug client which assumes e.g. Eval result numbers are always in IEEE
  double format.

There are bug fixes and other minor behavioral changes which may affect some
applications, see ``RELEASES.rst`` for details.

Known issues
============

This release has the following known issues worth noting.

Ecmascript features
-------------------

* FIXME

Portability and platforms
-------------------------

* FIXME

Raw issues from test runs
=========================

API tests
---------

* FIXME


Ecmascript tests
----------------

* FIXME

test262
-------

* FIXME
