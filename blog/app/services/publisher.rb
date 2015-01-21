class Publisher

  # grab the fanout exchange by its name and publish the message received
  def self.publish(exchange, message = {})
    channel.fanout("blog.#{exchange}").publish(message.to_json)
  end

  def self.channel
    @channel ||= connection.create_channel
  end

  # leave default RabbitMQ settings
  def self.connection
    @connection ||= Bunny.new.tap do |c|
      c.start
    end
  end
end