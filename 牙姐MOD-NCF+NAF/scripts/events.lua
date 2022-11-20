events = {}
next_event_id = 0
make_event = function()
	local event_id = next_event_id
	events[event_id] = {flag = nil}
	next_event_id = next_event_id + 1
	return event_id
end
close_event = function(event_id)
	events[event_id] = nil
end
wait_event = function(event_id)
	while not events[event_id].flag do
		sleep()
	end
	close_event(event_id)
end
mark_event = function(event_id)
	events[event_id].flag = not nil
end
