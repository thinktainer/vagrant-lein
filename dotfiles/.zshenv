typeset -u path
path=('~/packer' '~/.cabal/bin' '/Applications/VMware\ Fusion.app/Contents/Library/' $path)
export PATH
PYTHONSTARTUP="$HOME/.pythonstartup.py"
export PYTHONSTARTUP
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home/"
export JAVA_HOME
local fdbmach="$HOME/Documents/Virtual\ Machines.localized/Debian\ 7\ 64-bit.vmwarevm/Debian\ 7\ 64-bit.vmx"
local winmach="$HOME/Documents/Virtual\ Machines.localized/w8.vmwarevm/w8.vmx"
hash -d datasci=~/Documents/projects/coursera/datascience/
alias fdbstart="vmrun start $fdbmach nogui"
alias fdbstop="vmrun stop $fdbmach"
alias winstop="vmrun stop $winmach"
alias winstart="vmrun start $winmach"
alias winpause="vmrun pause $winmach"
alias winunpause="vmrun unpause $winmach"

