# lazygit #################################################################
# go to repo /home/marie/parvus/ptmp/git_workshop_collab
# bat #####################################################################
cat /home/marie/parvus/prog/slides/static/files/tools/julia.jl
bat /home/marie/parvus/prog/slides/static/files/tools/julia.jl
#################
bat /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py
cat /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py
less /home/marie/parvus/prog/slides/static/files/tools/two_layer_net_tensor.py
bat /home/marie/parvus/prog/slides/static/files/tools/julia.jl
less /home/marie/parvus/prog/slides/static/files/tools/julia.jl
#################
bat /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py
bat -d /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py
#################
bat /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py
bat -n /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py
bat -p /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py
bat -pp /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py
bat -pp /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py | more
bat -fpp /home/marie/parvus/ptmp/git_workshop_collab/src/test_manuel.py | more
hyperfine -i --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'grep -r Unix ~/parvus/prog/tcl'
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'rg Unix ~/parvus/prog/tcl'
# rg #######################################################################
# pass ######################################################################
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
# tramp ####################################################################
emacsclient -c /ssh:mhburle@cedar.computecanada.ca:/home/mhburle/.bash_history
emacsclient -c /sudo::/etc/ssh/sshd_config
# helm ######################################################################
# open .emacs and show:
# ; j
# ; i
# ; h r
# ; r
# ; k r
# ; f f
# ; h l
# ; h i
# ; m s
# ; h m s
# ; h m e
# ; h u
# ; h c
# ; h b
# ; h h a
# ; h h i
