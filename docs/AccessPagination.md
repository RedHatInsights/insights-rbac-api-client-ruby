# RBACApiClient::AccessPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;Access&gt;**](Access.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::AccessPagination.new(
  meta: null,
  links: null,
  data: null
)
```

