# README

This is an example to produce different offenses with/without `spring`.

## With spring

```console
% bin/rubocop sample.rb
Running via Spring preloader in process 86090
Inspecting 1 file
W

Offenses:

sample.rb:5:5: C: Performance/CollectionLiteralInLoop: Avoid immutable Array literals in loops. It is better to extract it into a local variable or a constant.
    [1, 2].exclude?(i)
    ^^^^^^
sample.rb:7:1: W: Lint/ShadowedException: Do not shadow rescued Exceptions.
rescue ActiveRecord::RecordNotFound, ActiveRecord::ActiveRecordError, StandardError => e ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1 file inspected, 2 offenses detected
```

## Without spring

```console
% bundle exec rubocop sample.rb
Inspecting 1 file
.

1 file inspected, no offenses detected
```
