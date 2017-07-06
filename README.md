# leanplum-rubymotion

Download and install Rubymotion from http://www.rubymotion.com/download/starter/
```
$ bundle install
$ bundle exec rake clean:all
$ bundle exec rake pod:install
$ APP_ID=123 KEY=123 bundle exec rake
```

After changing a cocoapod version, run:
```
$ bundle exec rake clean:all
$ bundle exec rake pod:install
```
