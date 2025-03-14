function fish_remove_path --argument-names remove_path --description "Remove specified directory from \$PATH"
    if test -z "$remove_path"
        echo "No directory to remove specified"
        return 1
    end

    if set -l index (contains --index $remove_path $PATH)
        set -e PATH[$index]
        echo "Removed" (set_color green)$remove_path(set_color normal) "from" (set_color yellow)"\$PATH"(set_color normal)
    else
        echo (set_color green)$remove_path(set_color normal) "not found in" (set_color yellow)"\$PATH"(set_color normal)
    end
end
