sybasebin_cp:
  file.managed:
    - name: /home/cb/install/ASESERV1570138P_0-20011142.TGZ
    - source: salt://sybase/files/ASESERV1570138P_0-20011142.TGZ
    - unless: test -f /home/cb/install/ASESERV1570138P_0-20011142.TGZ
