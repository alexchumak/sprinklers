Cylon = require('cylon')

Cylon.api('http')

# Initialize the robot
Cylon.robot(
  connections: arduino:
    adaptor: 'firmata'
    port: '/dev/ttyACM0'

  devices:
    front:
      driver: 'led'
      pin: 13
    back_left:
      driver: 'led'
      pin: 11
    back_right:
      driver: 'led'
      pin: 9

  work: (my) ->
    return

).start()
