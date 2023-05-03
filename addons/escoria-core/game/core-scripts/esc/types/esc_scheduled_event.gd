# An event that is scheduled to run later
extends Reference
class_name ESCScheduledEvent


# Event to run when timeout is reached
var event: ESCEvent

# The number of seconds until the event is run
var timeout: float

# The target object
var object: String


# Create a new scheduled event
func _init(p_event: ESCEvent, p_timeout: float, p_object: String):
	self.event = p_event
	self.timeout = p_timeout
	self.object = p_object


# Run the event
#
# **Returns** The execution code
func run() -> int:
	return event.run()
