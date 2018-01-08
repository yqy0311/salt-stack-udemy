sybase:
  cmd.run:
    - name: |
       mkdir -p /home/cb/install
  file.managed:
    - name: /home/cb/install/*.*
    - source: salt://sybase/files/*.*
