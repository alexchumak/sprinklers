Cylon = require('cylon')

Cylon.api 'http',
	ssl: false
	port: 80
	host: "10.0.1.106"
	auth:
		type: 'basic'
		user: process.env.SPRINKLES_USER
		pass: process.env.SPRINKLES_PASS


# Initialize the robot
Cylon.robot(
  name: "Sprinkles"

  connections:
    arduino:
      adaptor: 'firmata'
      port: '/dev/ttyACM0'

  devices:
    front:
      driver: 'led'
      pin: 13

    back_left:
      driver: 'led'
      pin: 9

    back_right:
      driver: 'led'
      pin: 11

  work: (my) ->
    return

).start()
