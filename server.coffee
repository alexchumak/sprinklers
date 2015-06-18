Cylon = require('cylon')

Cylon.api('http', ssl: false, port: 80, host: "10.0.1.11")

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
