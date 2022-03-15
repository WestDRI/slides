# lazygit ##############################################################################

# go to repo /home/marie/parvus/ptmp/git_workshop_collab

cat /home/marie/parvus/prog/slides/static/files/tools/julia.jl

bat /home/marie/parvus/prog/slides/static/files/tools/julia.jl

##############################################################################

bat /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py

cat /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py

less /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py

bat /home/marie/parvus/prog/slides/static/files/tools/julia.jl

less /home/marie/parvus/prog/slides/static/files/tools/julia.jl

##############################################################################

hyperfine -i --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'grep -r Unix ~/parvus/prog/tcl'

hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'rg Unix ~/parvus/prog/tcl'
