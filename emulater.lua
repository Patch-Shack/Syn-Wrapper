while (not syn) or (not is_sirhurt_closure) do wait() end
local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
local Saved_Globals = {
	is_si_cl = is_sirhurt_closure;
	ge_hi_gu = get_hidden_gui;
}
getgenv()["is_sirhurt_closure"] = nil
getgenv()["get_hidden_gui"] = nil
if rawget(getgenv(), "syn") and rawget(getgenv().syn, "sirhurt_syn") then
	getgenv()["syn"]["is_beta"] = function() return false; end
	getgenv()["is_synapse_function"] = Saved_Globals["is_si_cl"]
	getgenv()["syn"]["request"] = getgenv()["http_request"]
	getgenv()["syn"]["protect_gui"] = Saved_Globals["ge_hi_gu"]
	getgenv()["syn"]["set_thread_identity"] = getgenv()["setthreadidentity"]
	getgenv()["syn"]["get_thread_identity"] = getgenv()["getthreadidentity"]
	getgenv()["syn"]["queue_on_teleport"] = getgenv()["queue_on_teleport"]
	getgenv()["syn"]["write_clipboard"] = getgenv()["syn"]["write_clipboard"]
	getgenv()["setscriptable"] = function(obj, prop, val)
		if obj and prop and val then
			pcall(function()
				if val == true then
					sethidden(obj, prop, true)
				end
				if val == false then
					sethidden(obj, prop, false)
				end
			end)
		end
	end
	getgenv()["isnetworkowner"] = function() return true; end
	getgenv()["rconsoleprint"] = function() end
	getgenv()["rconsoleinfo"] = function() end
	getgenv()["rconsolewarn"] = function() end
	getgenv()["rconsoleerr"] = function() end
	getgenv()["rconsoleinput"] = function() return "input"; end
	getgenv()["rconsoleclear"] = function() end
	getgenv()["rconsolename"] = function() end
	getgenv()["printconsole"] = function() end
	getgenv()["getsynasset"] = function() end
	getgenv()["getspecialinfo"] = function() end
	getgenv()["hookfunction"] = getgenv()["detour_function"]
end
