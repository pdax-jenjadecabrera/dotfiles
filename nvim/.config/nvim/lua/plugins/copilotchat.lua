return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      model = "gpt-4.1",
      temperature = 0.1,
      window = {
        layout = "vertical",
        width = 0.25,
      },
      auto_insert_mode = true,
      prompts = {
        Fix = {
          prompt = (
            "There is a problem in this code. Identify the issues using the provided diagnostics and fix them. "
            .. "Explain what was wrong and how your changes address the problems."
          ),
          system_prompt = (
            "You are an expert software engineer. "
            .. "You will be provided with code that has issues along with diagnostics from a compiler or linter. "
            .. "Your task is to identify the problems in the code, fix them, and explain what was wrong and how your changes address the problems. "
            .. "Provide clear and concise explanations suitable for a developer looking to understand the issues and improvements made."
          ),
        },
        Document = {
          prompt = (
            "Generate documentation for the following code by adding concise comments or docstrings directly to the code. "
            .. "For atomic processes, use a single line comment. "
            .. "For other parts, provide concise yet clear documentation. "
            .. "Base the documentation on the context provided, considering surrounding code and project details. "
            .. "Do not include usage examples or instructions—only document what the code does and its intent."
          ),
          system_prompt = (
            "You are an expert technical writer and software engineer. "
            .. "Your task is to generate clear and concise documentation for the provided code snippet. "
            .. "Focus on explaining what the code does, its purpose, and any important details that a developer would need to understand its functionality. "
            .. "Base your documentation on the context provided, taking into account surrounding code and project information. "
            .. "Avoid including examples or usage instructions; instead, concentrate on delivering straightforward explanations that enhance comprehension of the code's intent and behavior."
          ),
        },
        Explain = {
          prompt = (
            "Explain what the following code does, its purpose, and any important details a developer should know. "
            .. "Base your explanation on the provided context. "
            .. "Focus on clarity and conciseness. Do not include usage examples or instructions."
          ),
          system_prompt = (
            "You are an expert software engineer. "
            .. "Your task is to explain the provided code snippet, describing its functionality, intent, and any noteworthy implementation details. "
            .. "Base your explanation on the context given. "
            .. "Avoid usage examples or instructions; concentrate on delivering a clear and concise explanation suitable for a developer."
          ),
        },
        Review = {
          prompt = (
            "Review the following code for correctness, readability, maintainability, and potential issues. "
            .. "Base your review on the provided context. "
            .. "Provide clear, concise feedback and suggestions for improvement. "
            .. "Do not include usage examples or instructions."
          ),
          system_prompt = (
            "You are an expert software engineer. "
            .. "Your task is to review the provided code snippet, evaluating its correctness, readability, maintainability, and identifying any potential issues. "
            .. "Base your review on the context given. "
            .. "Offer clear, concise feedback and actionable suggestions for improvement, without including usage examples or instructions."
          ),
        },
      },
    },
    keys = {
      { "<leader>cc", ":CopilotChat ", mode = { "n" } },
      { "<leader>cca", ":CopilotChat #buffer active #selection ", mode = "v" },
      { "<leader>ccc", ":CopilotChatClose<CR>", mode = "n" },
      { "<leader>ccx", ":CopilotChatReset<CR>", mode = "n" },
      { "<leader>ccm", ":CopilotChatModels<CR>", mode = "n" },
      { "<leader>cce", ":CopilotChatExplain #buffer active #selection <CR>", mode = "v" },
      { "<leader>ccr", ":CopilotChatReview #buffer active #selection <CR>", mode = "v" },
      { "<leader>ccf", ":CopilotChatFix #buffer active #selection ", mode = "v" },
      { "<leader>cco", ":CopilotChatOptimize #buffer active #selection <CR>", mode = "v" },
      { "<leader>ccd", ":CopilotChatDocument #buffer active #selection <CR>", mode = "v" },
      { "<leader>cct", ":CopilotChatTests<CR>", mode = "v" },
      { "<leader>ccg", ":CopilotChatCommit<CR>", mode = "n" },
    },
  },
}
