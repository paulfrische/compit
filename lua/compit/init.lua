local function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

local function run()
    local file = vim.fs.normalize('$XDG_CONFIG_HOME/nvim/compit_cache');
    local command = "make";
    if file_exists(file) then
        local file_obj = io.open(file, "r")
        io.input(file_obj)
        command = io.read()
    else
        local file_obj = io.open(file, "w")
        io.output(file_obj)
        io.write(command)
    end

    vim.ui.input({ prompt = "Build Command: ", default = command }, function(input)
        if command ~= input then
            command = input
            local file_obj = io.open(file, "w")
            io.output(file_obj)
            io.write(command)
        end
        vim.cmd('vsplit | terminal ' .. command)
    end)
end

return {
    run = run
}
