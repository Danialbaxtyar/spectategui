local G2L = {};

-- StarterGui.SpectateGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[SpectateGui]];


-- StarterGui.SpectateGui.Bar
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 5;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["2"]["Position"] = UDim2.new(-1, -100, 0.88, -50);
G2L["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2"]["Name"] = [[Bar]];
G2L["2"]["BackgroundTransparency"] = 0.2;


-- StarterGui.SpectateGui.Bar.Previous
G2L["3"] = Instance.new("TextButton", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextSize"] = 48;
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(135, 135, 135);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["Size"] = UDim2.new(0.25, 0, 1, 0);
G2L["3"]["Name"] = [[Previous]];
G2L["3"]["BorderColor3"] = Color3.fromRGB(131, 204, 255);
G2L["3"]["Text"] = [[<]];


-- StarterGui.SpectateGui.Bar.Previous.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.SpectateGui.Bar.Next
G2L["5"] = Instance.new("TextButton", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 48;
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(135, 135, 135);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["Size"] = UDim2.new(-0.25, 0, 1, 0);
G2L["5"]["Name"] = [[Next]];
G2L["5"]["BorderColor3"] = Color3.fromRGB(131, 204, 255);
G2L["5"]["Text"] = [[>]];
G2L["5"]["Position"] = UDim2.new(1, 0, 0, 0);


-- StarterGui.SpectateGui.Bar.Next.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);
G2L["6"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.SpectateGui.Bar.Title
G2L["7"] = Instance.new("TextLabel", G2L["2"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["TextSize"] = 14;
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0.45, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["7"]["Text"] = [[]];
G2L["7"]["Name"] = [[Title]];
G2L["7"]["Position"] = UDim2.new(0.275, 0, 0, 0);


-- StarterGui.SpectateGui.Bar.Title.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);
G2L["8"]["CornerRadius"] = UDim.new(0, 25);


-- StarterGui.SpectateGui.Bar.Title.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["7"]);
G2L["9"]["Thickness"] = 4;


-- StarterGui.SpectateGui.Bar.UICorner
G2L["a"] = Instance.new("UICorner", G2L["2"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 25);


-- StarterGui.SpectateGui.Bar.UIStroke
G2L["b"] = Instance.new("UIStroke", G2L["2"]);
G2L["b"]["Thickness"] = 4;


-- StarterGui.SpectateGui.Button
G2L["c"] = Instance.new("ImageButton", G2L["1"]);
G2L["c"]["BorderSizePixel"] = 5;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["Image"] = [[http://www.roblox.com/asset/?id=176106970]];
G2L["c"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["c"]["BackgroundTransparency"] = 0.3;
G2L["c"]["Name"] = [[Button]];
G2L["c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["c"]["Position"] = UDim2.new(0, 0, 0.5, -25);


-- StarterGui.SpectateGui.Button.UICorner
G2L["d"] = Instance.new("UICorner", G2L["c"]);
G2L["d"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.SpectateGui.Button.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["c"]);
G2L["e"]["Thickness"] = 4;


-- StarterGui.SpectateGui.LocalScript
G2L["f"] = Instance.new("LocalScript", G2L["1"]);



-- StarterGui.SpectateGui.LocalScript
local function C_f()
local script = G2L["f"];
	-- By super10099
	
	cam = game.Workspace.CurrentCamera
	
	local bar = script.Parent.Bar
	local title = bar.Title
	local prev = bar.Previous
	local nex = bar.Next
	local button = script.Parent.Button
	
	function get()
		for _,v in pairs(game.Players:GetPlayers())do
			if v.Name == title.Text then
				return(_)
			end
		end
	end
	
	
	local debounce = false
	button.MouseButton1Click:connect(function()
		if debounce == false then debounce = true
			bar:TweenPosition(UDim2.new(.5,-100,0.88,-50),"In","Linear",1,true)
			pcall(function()
					title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
			end)
		elseif debounce == true then debounce = false
			pcall(function() cam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid end)
				bar:TweenPosition(UDim2.new(-1,-100,0.88,-50),"In","Linear",1,true)
			end
	end)
	
	prev.MouseButton1Click:connect(function()
		wait(.1)
		local players = game.Players:GetPlayers()
		local num = get()
		if not pcall(function() 
			cam.CameraSubject = players[num-1].Character.Humanoid
			end) then
			cam.CameraSubject = players[#players].Character.Humanoid
		end
	pcall(function()
					title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
			end)
	end)
	
	nex.MouseButton1Click:connect(function()
		wait(.1)
		local players = game.Players:GetPlayers()
		local num = get()
		if not pcall(function() 
			cam.CameraSubject = players[num+1].Character.Humanoid
			end) then
			cam.CameraSubject = players[1].Character.Humanoid
		end
	pcall(function()
					title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
			end)
	end)
	
	
end;
task.spawn(C_f);

return G2L["1"], require;
