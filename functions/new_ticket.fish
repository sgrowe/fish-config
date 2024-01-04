function new_ticket --argument-names ticket_name
    # Print executed commands
    set -l fish_trace 1

    git switch main
    and git pull
    and git switch -c "BX-$ticket_name"
    and yarn
end
