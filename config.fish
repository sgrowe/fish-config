
# Homebrew - comes first to update env
eval "$(/opt/homebrew/bin/brew shellenv)"


if status is-interactive
    # Commands to run in interactive sessions can go here

    # Override `$EDIT` in each editor in order to use itself
    if not set -q EDIT
        set -x EDIT "code"
    end

    set -x EDITOR "$EDIT --wait"

    # fzf: https://junegunn.github.io/fzf/shell-integration/
    fzf --fish | source

    # Prompt
    set -g lucid_prompt_symbol_error "!"
end


# Be verbose
abbr mv 'mv -v'
abbr rm 'rm -v'
abbr cp 'cp -v'


# fish
abbr conf "$EDIT ~/.config/fish/config.fish"
abbr fconf "$EDIT ~/.config/fish"


# JJ
abbr j jj
abbr js jj status
abbr jn jj new
abbr jd jj diff --ignore-space-change
abbr jds jj describe
abbr jm --set-cursor "jj describe -m \"%\""
abbr jc --set-cursor "jj commit -m \"%\""
abbr jl jj log
abbr jls jj log --summary
abbr je jj edit
abbr jsq jj squash
abbr jsh jj show
abbr jg jj git
abbr jgf jj git fetch

abbr jj_msg --command jj --regex "-m" --set-cursor -- "--message \"%\""
abbr jj_no_whitespace --command jj --regex "-w" -- "--ignore-all-space"

abbr mn "jj git fetch && jj rebase -d main"


# git
abbr ga git add
abbr gai git add --interactive

abbr gc git commit
abbr gca git commit --amend
abbr gcs git commit --squash
abbr gcf git commit --fixup

abbr gb git branch
abbr gbc "git branch --show-current | string collect | pbcopy"

abbr gbl git blame

abbr gd git diff
abbr gdc git diff --cached

abbr gf git fetch
abbr gfm git fetch origin main:main

abbr gl git log

abbr gt git tag

abbr gs git status -sb

abbr gst git stash
abbr pop git stash pop
abbr gsp git stash pop
abbr gsa "git add . && git stash"

abbr gm git merge --autostash
abbr gma git merge --abort
abbr gmm git merge --autostash main
abbr ff git merge --autostash --ff-only
abbr ffm git merge --autostash --ff-only main

abbr gpl git pull --autostash

abbr gr git rebase --autostash
abbr gro git rebase --autostash --onto main
abbr grm git rebase --autostash main
abbr gri git rebase --interactive --autosquash
abbr grc git rebase --continue

abbr grs git restore
abbr grss git restore --staged

abbr undo git reset HEAD~1
abbr grst git reset HEAD~1

abbr grv git revert

abbr gw git worktree
abbr gwl git worktree list

abbr gcp git cherry-pick

abbr gco git checkout

abbr gsw "git branch | fzf --preview 'git log --color=always {-1}' --bind 'enter:become(git switch {-1})'"

# Replaced with jj equivalent above ^
# abbr mn "git switch main && git pull --autostash"


# ls
abbr l ls -A
abbr lh ls -lh


# Rust
abbr c cargo
abbr ca cargo add
abbr cad cargo add --dev
abbr ct cargo test
abbr cir cargo insta review
abbr cit cargo insta test --unreferenced delete


# docker
abbr d docker
abbr dr docker run
abbr db docker buildx


# npm
abbr n npm
abbr nr npm run
abbr ni npm install


# yarn
abbr y yarn
abbr ya yarn add
abbr yad yarn add --dev
abbr yw yarn workspace


# brew
abbr b brew


# mise
abbr m mise


# Next.js
set -gx NEXT_TELEMETRY_DISABLED 1
# Turbo
set -gx TURBO_TELEMETRY_DISABLED 1


# Hurl
abbr h hurl --variables-file .env
abbr hm "hurl --variables-file .env --cert ../../.certs/*.pem --key ../../.certs/*.key"


# Zed
abbr ze zed


# Cursor
abbr cu cursor


# Aider
abbr a aider
abbr awd "aider (git status -s | awk '{print \$NF}')" # Start aider with edited files loaded
abbr aw aider --watch-files
abbr aider_read --command aider --regex r -- --read
abbr aider_edit --command aider --regex e -- --edit
abbr aider_msg_ --command aider --regex m -- --message
abbr aider_msgf --command aider --regex mf -- --message-file
abbr aider_test --command aider --regex t -- --test
abbr aider_wtch --command aider --regex w -- --watch-files


set -x AIDER_NOTIFICATIONS true


# aider-script
abbr as aider-script


# iOS simulator
# Open url in already booted simulator
abbr so "xcrun simctl openurl booted (pbpaste)"


# Android simulator
abbr andr_paste adb shell input text


# Paraspara
abbr yt "yarn test -- --coverage false --maxWorkers=2 --workerThreads=false --ignoreProjects native-android native-ui-android --watch"
abbr yty yarn type-check
abbr dev yarn dev --filter=!./apps/orchestrator --filter=!./apps/paraspara-web
abbr orc yarn workspace orchestrator dev
abbr web yarn workspace paraspara-web dev
abbr ios yarn dev:ios
abbr ios_prebuild "cd apps/native && yarn prebuild:cached && cd ios && pod install"
abbr andr yarn dev:android
abbr e2eb "DETOX_APP_ENVIRONMENT=mocked OVERRIDE_WAITING_LIST=true yarn detox build -c ios.sim.release"
abbr e2er "DETOX_APP_ENVIRONMENT=mocked OVERRIDE_WAITING_LIST=true yarn detox test --configuration ios.sim.release --take-screenshots failing --record-videos failing -l debug"
abbr e2e_build "yarn workspace native detox build -c ios.sim.debug"
abbr e2e_run "yarn workspace native detox test --configuration ios.sim.debug --take-screenshots failing --record-videos failing -l debug"
abbr dt yarn devtools
abbr sf hurl --variables-file sf.env
abbr sw "yarn && yarn workspace graphql-types build"
abbr gql "yarn workspace graphql-types build"
abbr rmxc rm apps/native/ios/.xcode.env.local


# Projects
abbr para cd ~/planes/paraspara-platform
abbr para2 cd ~/planes/paraspara-platform-2
abbr para3 cd ~/planes/paraspara-platform-3
abbr mdi cd ~/projects/MDI\\ Tracker


# Xcode
abbr xcderiv cd ~/Library/Developer/Xcode/DerivedData


# zoxide: https://github.com/ajeetdsouza/zoxide
zoxide init fish | source
