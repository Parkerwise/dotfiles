-- type name, then it pastes
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local greek= {
{"alpha", "α"}, {"Alpha", "Α"},
{"beta", "β"}, {"Beta", "Β"},
{"gamma", "γ"}, {"Gamma", "Γ"},
{"Delta", "Δ"}, {"delta", "δ"},
{"epsilon", "ε"}, {"Epsilon", "Ε"},
{"zeta", "ζ"}, {"Zeta", "Ζ"},
{"Eta", "Η"}, {"eta", "η"},
{"theta", "θ"}, {"Theta", "Θ"},
{"Iota", "Ι"}, {"iota", "ι"},
{"kappa", "κ"}, {"Kappa", "Κ"},
{"lambda", "λ"}, {"Lambda", "Λ"},
{"mu", "μ"}, {"Mu", "Μ"},
{"nu", "ν"}, {"Nu", "Ν"},
{"xi", "ξ"}, {"Xi", "Ξ"},
{"Omicron", "Ο"}, {"omicron", "ο"},
{"pi", "π"}, {"Pi", "Π"},
{"rho", "ρ"}, {"Rho", "Ρ"},
{"sigma", "σ"}, {"Sigma", "Σ"},
{"tau", "τ"}, {"Tau", "Τ"},
{"upsilon", "υ"}, {"Upsilon", "Υ"},
{"phi", "φ"}, {"Phi", "Φ"},
{"chi", "χ"}, {"Chi", "Χ"},
{"psi", "ψ"}, {"Psi", "Ψ"},
{"omega", "ω"}, {"Omega", "Ω"},
{"^0", "⁰"},
{"^1", "¹"},
{"^2", "²"},
{"^3", "³"},
{"^4", "⁴"},
{"^5", "⁵"},
{"^6", "⁶"},
{"^7", "⁷"},
{"^8", "⁸"},
{"^-", "⁻"},
{"9", "⁹"},
{"int", "∫"},
{"_0", "₀"},
{"_1", "₁"},
{"_2", "₂"},
{"_3", "₃"},
{"_4", "₄"},
{"_5", "₅"},
{"_6", "₆"},
{"_7", "₇"},
{"^-", "⁻"},
{"_8", "₈"},
{"_9", "₉"},
{"sun", "☉"},
{"h bar","ℏ"}}


-- our picker function: colors
-- define table
local symbols= function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "symbols",
	-- greek
	-- greek extended?
	-- greek extended?
	-- mathematical operators
	--
    finder = finders.new_table {
      results = greek,
	  entry_maker = function(entry)
        return {
          value = entry,
          display = entry[2],
          ordinal = entry[1],
        }
      end,
    },
	sorter = conf.generic_sorter(),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        print(vim.inspect(selection))
        vim.api.nvim_put({ selection.display}, "", false, true)
      end)
      return true
    end,
  }):find()
end
local symbolsCursor = function(opts)
	symbols(require("telescope.themes").get_cursor{})
end
vim.keymap.set('i', '<C-K>', symbolsCursor)
