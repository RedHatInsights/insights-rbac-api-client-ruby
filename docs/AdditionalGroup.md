# RBACApiClient::AdditionalGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **uuid** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::AdditionalGroup.new(
  name: GroupA,
  description: GroupA Description,
  uuid: 234df936-abb4-4238-a1c9-d91fc540c702
)
```

