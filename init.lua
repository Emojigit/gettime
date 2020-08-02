gettime = {}

gettime.get_hour = function()
    local current_time = math.floor(core.get_timeofday() * 1440)
    local minutes = current_time % 60
    local hour = (current_time - minutes) / 60
    return hour
end

minetest.register_chatcommand("hour", {
	description = "gettime.get_hour",
	func = function()
		return true, gettime.get_hour()
	end,
})

gettime.get_minutes = function()
    local current_time = math.floor(core.get_timeofday() * 1440)
    local minutes = current_time % 60
    return minutes
end

minetest.register_chatcommand("minutes", {
	description = "gettime.get_minutes",
	func = function()
		return true, gettime.get_minutes()
	end,
})

gettime.get_formatted_time = function()
    return ("%d:%02d"):format(tostring(gettime.get_hour()),tostring(gettime.get_minutes()))
end

minetest.register_chatcommand("formatted_time", {
	description = "gettime.get_formatted_time",
	func = function()
		return true, gettime.get_formatted_time()
	end,
})