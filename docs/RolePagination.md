# RBACApiClient::RolePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;RoleOut&gt;**](RoleOut.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::RolePagination.new(
  meta: null,
  links: null,
  data: null
)
```

