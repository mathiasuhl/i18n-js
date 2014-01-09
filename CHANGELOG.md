Changelog
=========

Major changes to I18n.js for each release. Please see the Git log for complete list of changes.

3.0.0.rc8 (2014-01-09)
-------------------

* Fix local reload regression in development

3.0.0.rc7 (2013-12-23)
-------------------

* If loaded in browser (which is not in jasmine spec) and I18n object is defined and has some options set (e.g. locale, defaultLocale), they will be kept

3.0.0.rc6 (2013-12-13)
-------------------

* Add support for +00:00 style time zone designator (https://github.com/fnando/i18n-js/pull/167)
* Add back rake task for export (`rake i18n:js:export`)
* Always limit output file to only the I18n.available_locales (https://github.com/fnando/i18n-js/pull/162)
* Not overriding translation when manually run `I18n::JS.export` (https://github.com/fnando/i18n-js/pull/171)
* Move missing placeholder text generation into its own function (for easier debugging) (https://github.com/fnando/i18n-js/pull/169)
