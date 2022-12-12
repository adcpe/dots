function c -w codium -d 'Opens VSCodium/VSCode on the current directory'
    if command --search --quiet codium
        codium $argv
    else
        code $argv
    end
end
