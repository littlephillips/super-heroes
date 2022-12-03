# Project name: Superheroes

# Objective :create a rails api 
# 3 resources (tables)

## `Hero` - attributes: 
```
id, name, super_name
```
## `Power` - attributes: 
```
id, name, description
```

## `HeroPower` - attributes 
```
strength, power_id, hero_id
```
# 

# Models 
## `Hero` - 
```
has many `Powers` thru `HeroPower`
```
## `Power` - 
```
has many `Hero`s thru `HeroPower`
```
## `HeroPower` - 
```
belongs to a `Hero` and 
belongs to a `Power`
```
# 


# Validation
## `Add validation to HeroPower`
## `strength` must be one of the following values: 
```
Strong, Weak, Average
```
## `description` 
```
must be present and atleast 20 characters long
```
#

# Routes 
## `Hero`
```
GET /heroes      : index resource
GET /heroes/:id  : show resource
error            : Hero not found
```

## `Power`
```
GET /powers               : index resource
GET /powers/:id           : show resource
error                     : Power not found
PATCH /power/:id          : update resource
error if does not exist   : Power not found
error if not updated      : Validation errors
```

## `HeroPower`
```
POST /hero_powers       : create resource
if created, return associated hero
if not created return   : validation errors
```
#

# Serializer - track what is sent to client
```
gem "active_model_serializers"
```


