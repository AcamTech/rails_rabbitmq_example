## Running the example

##### 1. Ensure RabbitMQ is installed and running

On Mac OSX with homebrew you can install RabbitMQ with

```bash
$ brew install rabbitmq
```

And start it using
```
$ /usr/local/opt/rabbitmq/sbin/rabbitmq-server
```

##### 2. Setup and start all processes

Add binding between Exchange "blog.posts" to Queue "dashboad.posts" in the [RabbitMQ Administration Page](http://localhost:15672)


##### 3. Setup and start all processes

```bash
$ foreman start
```

##### 4. Open all three applications in browser

- [Blog (http://localhost:3001)](http://localhost:3001)
- [Dashboard (http://localhost:3002)](http://localhost:3002)




[Event sourcing on Rails with RabbitMQ Article](http://codetunes.com/2014/event-sourcing-on-rails-with-rabbitmq/)
