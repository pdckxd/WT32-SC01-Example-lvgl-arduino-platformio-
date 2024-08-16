local cmd = "pio run"
local overseer = require("overseer")

vim.keymap.set("n", "<F5>", function()
	require("toggleterm").exec(cmd, 1, nil, nil, "horizontal")
end)

vim.keymap.set("n", "<F6>", function()
	overseer.run_template({ name = "Build & Run" }, function(_)
		-- if task then
		-- 	overseer.run_action(task, "open float")
		-- end
	end)
end)
