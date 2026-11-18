variable "bool" {
    type = bool
    default = true
}

variable "empty" {
    type = string
    default = ""
}

variable "string" {
    type = string
    default = "some value"
  
}

variable "number" {
    type = number
    default = 0
  
}

variable "list_of_strings" {
    type = list(string)
    default = [ "a", "b", "c" ]
  
}

variable "list_of_number" {
    type = list(number)
    default = [ 1, 2, 3 ]
  
}

variable "map" {
    type = map(string)
    default = {
      name = "John"
      surname = "Connor"
    }
  
}

variable "containers" {
    type = map(object({
      name = string
      image = string
      ports = object({
        external = number
        internal = number 
      })
    }))
    default = {
      nginx = {
        name = "reverse-proxy-nginx"
        image = "nginx:1.21.1"
        ports = {
          external = 80
          internal = 1080
        }
      },
      wordpress = {
        name = "web-wordpress"
        image = "wordpress:latest"
        ports = {
          external = 80
          internal = 2080
        }
      }
    }
}