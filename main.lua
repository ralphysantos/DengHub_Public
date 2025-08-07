local params = ...

local password = params.password

local url = params.hub

local headers = {
    ["Authorization"] = params.token
}

local response = game:GetService("HttpService"):RequestAsync({
    Url = url,
    Method = "GET",
    Headers = headers
})

if response.StatusCode == 200 then
    print(response)
    local func, err = loadstring(game:HttpGet(response.Body)
    if func then
        func()
    else
        print("Error loading script:", err)
    end
else
    print("Failed to fetch script. Status code:", response.StatusCode,params)

end
