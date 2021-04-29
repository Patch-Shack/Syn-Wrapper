while (not syn) or (not is_sirhurt_closure) do wait() end
if rawget(getgenv(), "syn") and rawget(getgenv().syn, "sirhurt_syn") then
	getgenv()["syn"]["is_beta"] = function() return false; end
	getgenv()["syn"]["request"] = getgenv()["http_request"]
	getgenv()["syn"]["protect_gui"] = getgenv()["get_hidden_gui"]
	getgenv()["syn"]["set_thread_identity"] = getgenv()["setthreadidentity"]
	getgenv()["syn"]["get_thread_identity"] = getgenv()["getthreadidentity"]
	getgenv()["syn"]["queue_on_teleport"] = getgenv()["queue_on_teleport"]
	getgenv()["syn"]["write_clipboard"] = getgenv()["syn"]["write_clipboard"]
	getgenv()["hookfunction"] = getgenv()["detour_function"]
end
