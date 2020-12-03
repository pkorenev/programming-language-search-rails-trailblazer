## Prerequisites
* Ruby 2.5.8
* NodeJS

## Usage

* Install deps: `gem install bundler && bundle install && yarn install`.
* To run tests: `$ rspec`.
* To run console: `$ bin/rails c`

## Short intro
I thinked about to write more performant search with caching and maybe multithreading. But then I decided not to do it. Because this is just test task. And in real project we'd use some database instead of reimplementing it.

I decided to write lexer + parser for syntax tree for search query.
You can see app/services/query_parser.rb.
Search is implemented in app/services/search.rb.

I don't have much experience with writing syntax analyzers, parsers, code generation, tree traversal.
But I'd like to get experience in these things too.

I learned about PEG parsers and it looks interesting to me.
But as I needed to provide result to you as soon as possible I decided not implementing PEG by myself and used something like LL parser.

Also if you find some lack of testing, please forgive me.

I started with plain ruby implementaion. 
Later I included trailblazer and briefly used it in controller and a little bit investingated trailblazer's ecosystem.
For now I decided not to move logic from separate classes to operations for not wasting time.
If we'd need trailblazer or other gems(e.g. graphql) in real projects, I will learn them.

I didn't see a need for javascript here. So I have not used javascript.