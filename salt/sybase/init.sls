sybase:
  cmd.run:
    - name: |
       mkdir -p /home/cb/install

include:
  - sybasebin_cp
  - sybase_install
