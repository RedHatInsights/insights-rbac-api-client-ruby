# RBACApiClient::PrincipalPaginationAllOfDataInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::PrincipalPaginationAllOfDataInner.openapi_one_of
# =>
# [
#   :'Principal',
#   :'PrincipalMinimal'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::PrincipalPaginationAllOfDataInner.build(data)
# => #<Principal:0x00007fdd4aab02a0>

RBACApiClient::PrincipalPaginationAllOfDataInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Principal`
- `PrincipalMinimal`
- `nil` (if no type matches)

