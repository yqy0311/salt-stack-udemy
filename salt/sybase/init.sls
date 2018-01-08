sybase:
  cmd.run:
    - name: |
       mkdir /home/cb/install
  file.managed:
    - name: /home/cb/install/ASESERV1570138P_0-20011142.TGZ
    - source: salt://home/cb/install/ASESERV1570138P_0-20011142.TGZ
