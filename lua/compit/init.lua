local function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

local function run()
    local file = vim.fs.normalize('$XDG_CONFIG_HOME/nvim/compit_cache');
    local command = "";
    if file_exists(file) then
        local file_obj = io.open(file, "r")
        io.input(file_obj)
        command = io.read()
    else
        print("nope")
    end
    print(command)
end

return {
    run = run
}
