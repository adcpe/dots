function c -d 'Opens VSCode/VSCodium on the current directory'
    if command --search --quiet code
        code $argv
    else
        codium $argv
    end
end
