for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config')..'/lua/config')) do
    if (string.sub(file,0,1) ~= '.' and string.sub(file,0,4) ~= 'init') then
      require('config.'..file)
    end
end
