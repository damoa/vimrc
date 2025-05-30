let s:vim_ai_endpoint_url = "http://0.0.0.0:11450/v1/chat/completions"
let s:vim_ai_model_instruct = "phi3"
let s:vim_ai_model_code = "phi3"
let s:vim_ai_temperature = 0.3

let s:vim_ai_chat_config = #{
\  engine: "chat",
\  options: #{
\    model: s:vim_ai_model_instruct,
\    temperature: s:vim_ai_temperature,
\    endpoint_url: s:vim_ai_endpoint_url,
\    auth_type: 'none',
\    max_tokens: 0,
\    request_timeout: 60,
\  },
\  ui: #{
\    code_syntax_enabled: 1,
\  },
\}

let s:vim_ai_edit_config = #{
\  engine: "chat",
\  options: #{
\    model: s:vim_ai_model_code,
\    temperature: s:vim_ai_temperature,
\    endpoint_url: s:vim_ai_endpoint_url,
\    auth_type: 'none',
\    max_tokens: 0,
\    request_timeout: 60,
\  },
\  ui: #{
\    paste_mode: 1,
\  },
\}

let g:vim_ai_chat = s:vim_ai_chat_config
let g:vim_ai_complete = s:vim_ai_edit_config
let g:vim_ai_edit = s:vim_ai_edit_config
