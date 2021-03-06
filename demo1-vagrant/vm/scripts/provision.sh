#!/bin/sh -eux

cat <<EOF >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEA4g0SIII7PzQpFyAfiB7M7wt8Uk/8gaZQycDNfqXJ2Z5Mc9akvoK1A4Lj8O/UPdqUFeySdvWLSpbiALf5wSzYUADFN/htz+3wcL2vxMWLsq28BK5QNfiNb4vbgF5IO7vKc1I1zo6Prx5QHTIDzgYFkYgWscqA6ogfGkKjRtOQUQGMyUaSw7NuW2kcM7+z9AUK439RJF701Gl5OaQsjTEA93sy1+Mnrzv5r2V0Yxo2Elqv4yRGb4rSWUtQC8clG6n9+0F87hFHcfNeT+tGs8MrOvV9SNVfqJlAlrlBI2FG2zdlNfsAxklpZjskpTpCdKyHkRM0710Bs4uwrJgVEXY0df1T6nM6l2TlDFPuwopL7ogmHc48lGUMtwPo8NCkXbMOeRCqaJkmhxipuSJ/LZEHU02tFWpXMBWBRwh/VshGD2hn7gMnt0yW/b5PfBY9ifk15x/IWJNNYpYe4skSYksBXH8VW1l8ZuOI1zolIGyl1xwObktxfCRfVAXlApp93ax4mKwZW/cUb++PHlGwMeg4q3WwamEz8ASQrmubHXBHkql7EjIQ/WwXq6xJmcoKv0q0U3Wlvyu22Yt6FMIBrxGcXMhuJgpbkFhA/XteIabgdZR/3ZK6s9XuQYG5bk1aYc+VLK4GBNULdF7MW8rK5N2PLSZx5wfGYRwIwBLeAbAMvKk= eric.hartmann@sonarsource.com
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFIesGm4jJGDXbvPxtcDMALcEQncv1U1EScNSk983P0mC4aget2oR6p9INVPoJOfw/l6pqqaQlWR2pi4zruqDb1utJvEkYeJ8sRx9N81Bnhp7i8oYs3euzLH5sUDl1aN8C4ZYT1TAKowifdqILktxcItIoVzJoV5Ras7Mja8n3Hs0IrXBL1cH+SN0GM4mNJ/cJaPXjINPrRkRbwO5+Xr20eHrzzgUY/WTNr9JyiKSOti4+6r8J0EFqjop+OBwdGKYBu5Hq0AGuhuWqBbwf3lvVOQcj12V2e96etYusYYQ/nQubiS7hRQHRuGesSibJQ4+H0s+Wi7+FZs7lpSJrZT4V henri.gomez@sonarsource.com
EOF

sed -i "s/^.*requiretty/# requiretty/" /etc/sudoers;