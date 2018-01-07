sybase:
  cmd.run:
    - name: |
       mkdir /home/cb/install
  file.managed:
    - name: /home/cb/install/
    - source: salt://home/cb/install/*.*
  cmd.run:
    - name: |
      cd /home/cb/install
      tar -xzvf ASESERV1570138P_0-20011142.TGZ
      cd ebf26397
      ./setup.bin -f ../sybase_15_7_sp138_bin_install.rs -i silent -DAGREE_TO_SYBASE_LICENSE=true -DRUN_SILENT=true
