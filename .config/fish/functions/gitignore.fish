function gitignore -d 'Downloads a .gitignore for the project type to the current directory'
    curl -sL https://www.toptal.com/developers/gitignore/api/$argv >.gitignore
end
