local ActiveRecord = require "framework.api.active_record"
local http_config = require "test.config.http"

local News = {
    domain = http_config.default_domain,
    
    api_list = "/news",
    api_detail = "/news/{id}",
    api_create = "/news",
    api_update = "/news/{id}",
    api_delete = "/news/{id}",

    primary_key = "id",
}

News.__index = News

setmetatable(News, {
    __index = ActiveRecord,
})

return News
