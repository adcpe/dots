function fetch -d 'Alias for curl --request <method>'
    set method (string upper $argv[1])
    curl -X $method $argv[2]
end
