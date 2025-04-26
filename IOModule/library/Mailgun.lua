---@meta
---@class Mailgun
---@field reply_handler fun(mailgun:Mailgun, email_sent:boolean, error_code:integer, error_message:string) Called when the email is sent or fails to send
local Mailgun = {}

---Creates a new Mailgun object
---@param domain string Domain name
---@param api_key string API key for authentication
---@return Mailgun
function Mailgun.new(domain, api_key) end

---Sends an email
---@param from string Sender email address
---@param to string Recipient email address
---@param subject string Subject of the email
---@param body string Body of the email
---@param cc_list? string[] CC list of email addresses
function Mailgun:send_mail(from, to, subject, body, cc_list) end

return Mailgun