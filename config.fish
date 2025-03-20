if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"


# fish
abbr conf cursor ~/.config/fish/config.fish
abbr fsh cd ~/.config/fish


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

abbr mn "git switch main && git pull --autostash"


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


# Next.js
set -gx NEXT_TELEMETRY_DISABLED 1
# Turbo
set -gx TURBO_TELEMETRY_DISABLED 1


# Hurl
abbr h hurl --variables-file .env
abbr hm "hurl --variables-file .env --cert ../../.certs/*.pem --key ../../.certs/*.key"


# Cursor
abbr cu cursor


# Aider
abbr a aider
abbr awd "aider (git status -s | awk '{print \$NF}')" # Start aider with edited files loaded
abbr aw aider --watch-files
abbr --command aider r -- --read
abbr --command aider e -- --edit
abbr --command aider m -- --message
abbr --command aider mf -- --message-file
abbr --command aider t -- --test
abbr --command aider w -- --watch-files


set -x AIDER_NOTIFICATIONS true


# aider-script
abbr as aider-script


# iOS simulator
# Open url in already booted simulator
abbr so "xcrun simctl openurl booted (pbpaste)"


# Android simulator
abbr andr_paste adb shell input text


# Paraspara
abbr yt "yarn test -- --coverage false --maxWorkers=2 --workerThreads=false --ignoreProjects native:android native-ui:android --watch"
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
abbr mdi cd ~/projects/MDI\\ Tracker


# Xcode
abbr xcderiv cd ~/Library/Developer/Xcode/DerivedData
