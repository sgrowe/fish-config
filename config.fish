if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"


# fish
abbr conf code ~/.config/fish/config.fish
abbr fsh cd ~/.config/fish


# git
abbr ga git add
abbr gai git add --interactive .

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

abbr gl git log

abbr gst git stash
abbr pop git stash pop

abbr gm git merge --autostash
abbr gma git merge --abort
abbr gmm git merge --autostash main

abbr gpl git pull --autostash

abbr gr git rebase
abbr gra git rebase --autostash
abbr gro git rebase --autostash --onto main
abbr grm git rebase --autostash main
abbr gri git rebase --interactive --autosquash
abbr grc git rebase --continue

abbr grs git restore
abbr grss git restore --staged

abbr grv git revert

abbr gw git worktree
abbr gwl git worktree list

abbr gcp git cherry-pick

abbr mn "git switch main && git pull --autostash"


# ls
abbr lsh ls -lh


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


# pnpm
abbr p pnpm
abbr pa pnpm add
abbr pad pnpm add --save-dev
abbr b pnpm run build
abbr dv pnpm run dev
abbr dep pnpm run deploy


# npm
abbr n npm
abbr nr npm run
abbr ni npm install


# yarn
abbr y yarn
abbr ya yarn add
abbr yad yarn add --dev


# Next.js
set -gx NEXT_TELEMETRY_DISABLED 1
# Turbo
set -gx TURBO_TELEMETRY_DISABLED 1


# Hurl
abbr h hurl --variables-file .env
abbr hm "hurl --variables-file .env --cert ../../.certs/*.pem --key ../../.certs/*.key"


# iOS simulator
# Open url in already booted simulator
abbr so xcrun simctl openurl booted


# Android simulator
abbr andr_paste adb shell input text


# Paraspara
abbr yt yarn test --watch --coverage false
abbr yty yarn type-check
abbr dev yarn dev
abbr ios yarn dev:ios
abbr andr yarn dev:android
abbr e2e "yarn workspace native e2e:ios"
abbr e2e_build "yarn workspace native detox build -c ios.sim.debug"
abbr e2e_run "yarn workspace native detox test --configuration ios.sim.debug --take-screenshots failing --record-videos failing -l debug"
abbr dt yarn devtools
abbr sf hurl --variables-file sf.env
abbr sw "yarn && yarn workspace graphql-types build"
abbr rmxc rm apps/native/ios/.xcode.env.local


# Projects
abbr para cd ~/planes/paraspara-platform
abbr para2 cd ~/planes/paraspara-platform-2
abbr mdi cd ~/projects/MDI\\ Tracker


# Xcode
abbr xcderiv cd ~/Library/Developer/Xcode/DerivedData
