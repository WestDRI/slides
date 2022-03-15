# lazygit ##############################################################################

# go to repo /home/marie/parvus/ptmp/git_workshop_collab

# bat #############################################################################

cat /home/marie/parvus/prog/slides/static/files/tools/julia.jl

bat /home/marie/parvus/prog/slides/static/files/tools/julia.jl

#################

bat /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py

cat /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py

less /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py

bat /home/marie/parvus/prog/slides/static/files/tools/julia.jl

less /home/marie/parvus/prog/slides/static/files/tools/julia.jl

# rg #############################################################################

hyperfine -i --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'grep -r Unix ~/parvus/prog/tcl'

hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'rg Unix ~/parvus/prog/tcl'
# pass ##############################################################################

bat /usr/bin/pass

pass

pass init mhburle@gmail.com

pass

pass insert somesite.ca/your@email

pass

pass somesite.ca/your@email
pass -c somesite.ca/your@email

pass edit somesite.ca/your@email

pass generate -c othersite.com/userid 12

pass

pass generate -cn newsite.ca/your@email 20

pass rm newsite.ca/your@email

pass

# tramp ##############################################################################
# helm ##############################################################################
