return {
  'h3pei/rspec.nvim',
  config = function ()
    require('rspec').setup({
      allowed_file_format = function(filename)
        return vim.endswith(filename, "_spec.rb")
      end,
      formatter = "progress",
      focus_on_last_spec_result_window = true,
      open_quickfix_when_spec_failed = true,
      last_result_path = vim.fn.stdpath("data") .. "/" .. "rspec_last_result",
      last_failed_result_path = vim.fn.stdpath("data") .. "/" .. "rspec_last_failed_result",
      -- Command to open the file to jump to.
      -- Examples of other alternatives: vsplit, split, tabedit
      jump_command = "edit",
      ignored_dirs_on_jump = {},
    })
  end
}
