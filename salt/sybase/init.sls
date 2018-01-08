sybase_dir:
  cmd.run:
    - name: |
       mkdir -p /home/cb/install

sybasebin_cp:
    file.managed:
      - name: /home/cb/install/ASESERV1570138P_0-20011142.TGZ
      - source: salt://sybase/files/ASESERV1570138P_0-20011142.TGZ
      - unless: test -f /home/cb/install/ASESERV1570138P_0-20011142.TGZ

sybaselic_cp:
    file.managed:
      - name: /home/cb/install/ANY_20161012_064859.lic
      - source: salt://sybase/files/ANY_20161012_064859.lic
      - unless: test -f /home/cb/install/ANY_20161012_064859.lic

sybasers_cp:
    file.managed:
      - name: /home/cb/install/sybase_15_7_sp138_bin_install.rs
      - source: salt://sybase/files/sybase_15_7_sp138_bin_install.rs
      - unless: test -f /home/cb/install/sybase_15_7_sp138_bin_install.rs


sybase_install:
    cmd.run:
      - name: |
         cd /home/cb/install/
         tar -xzvf ASESERV1570138P_0-20011142.TGZ
         cd /home/cb/install/ebf26397
         ./setup.bin -f ../sybase_15_7_sp138_bin_install.rs -i silent -DAGREE_TO_SYBASE_LICENSE=true -DRUN_SILENT=true
