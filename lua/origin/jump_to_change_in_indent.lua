local CustomJumpCommand = {}

local api = vim.api
function CustomJumpCommand.jump_to_change_in_indent(forward)
    local current_indent = api.nvim_call_function('indent', { '.' })
    local line = api.nvim_call_function('line', { '.' })

    while line >= 1 and line <= api.nvim_call_function('line', { '$' }) do
        line = forward and line + 1 or line - 1
        if api.nvim_call_function('indent', { line }) ~= current_indent then
            api.nvim_command('normal! ' .. line .. 'G^')
            break
        end
    end
end

return CustomJumpCommand
