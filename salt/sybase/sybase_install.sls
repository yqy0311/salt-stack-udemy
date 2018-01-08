sybase_install:
  cmd.run:
    - name: |
       cd /home/cb/install/
       tar -xzvf ASESERV1570138P_0-20011142.TGZ
       cd /home/cb/install/ebf26397
       ./setup.bin -f ../sybase_15_7_sp138_bin_install.rs -i silent -DAGREE_TO_SYBASE_LICENSE=true -DRUN_SILENT=true
