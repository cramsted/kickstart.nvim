-- Custom Parameters (with defaults)
return {
    "David-Kunz/gen.nvim",
    opts = {
        model = "mistral",      -- The default model to use.
        display_mode = "split", -- The display mode. Can be "float" or "split".
        show_prompt = true,    -- Shows the Prompt submitted to Ollama.
        show_model = true,     -- Displays which model you are using at the beginning of your chat session.
        no_auto_close = false,  -- Never closes the window automatically.
        init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
        -- Function to initialize Ollama
        command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
        -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
        -- This can also be a lua function returning a command string, with options as the input parameter.
        -- The executed command must return a JSON object with { response, context }
        -- (context property is optional).
        list_models = '<omitted lua function>', -- Retrieves a list of model names
        debug = false                           -- Prints errors and the command which is run.
    },
    config = function()
        vim.keymap.set({ 'n', 'v' }, '<leader>ia', ':Gen Ask<CR>', { desc = "A[I] [A]sk" })
        vim.keymap.set({ 'n', 'v' }, '<leader>ic', ':Gen Change<CR>', { desc = "A[I] [C]hange" })
        vim.keymap.set({ 'n', 'v' }, '<leader>icc', ':Gen Change_Code<CR>', { desc = "A[I] [C]hange [C]ode" })
        vim.keymap.set({ 'n', 'v' }, '<leader>ih', ':Gen Chat`<CR>', { desc = "A[I] C[h]at" })
        vim.keymap.set({ 'n', 'v' }, '<leader>ie', ':Gen Enhance_Code<CR>', { desc = "A[I] [E]nhance code" })
        vim.keymap.set({ 'n', 'v' }, '<leader>iew', ':Gen Enhance_Wording<CR>', { desc = "A[I] [E]nhace [W]ording" })
        vim.keymap.set({ 'n', 'v' }, '<leader>ieg', ':Gen Enhance_Grammar_Spelling<CR>', { desc = "A[I] [E]nhance [G]rammar" })
        vim.keymap.set({ 'n', 'v' }, '<leader>ig', ':Gen Generate<CR>', { desc = "A[I] [G]enerate" })
        vim.keymap.set({ 'n', 'v' }, '<leader>ir', ':Gen Review_Code<CR>', { desc = "A[I] [R]eview Code" })
        vim.keymap.set({ 'n', 'v' }, '<leader>is', ':Gen Summarize<CR>', { desc = "A[I] [S]ummarize" })
    end
}
