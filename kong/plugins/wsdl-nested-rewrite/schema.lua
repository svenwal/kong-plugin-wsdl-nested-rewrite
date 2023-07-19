local typedefs = require "kong.db.schema.typedefs"

local PLUGIN_NAME = "wsdl-nested-rewrite"

local schema = {
  name = PLUGIN_NAME,
  fields = {
    { consumer = typedefs.no_consumer },
    { protocols = typedefs.protocols_http },
    { config = {
        type = "record",
        fields = {
	  { cache_ttl = {
              type = "integer",
              default = 3600,
              required = true
            }},
	  { only_listen_on_wsdl_query = {
              type = "boolean",
	      required = true,
	      default = false
            }},
        },
        entity_checks = {
        },
      },
    },
  },
}

return schema
