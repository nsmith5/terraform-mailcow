provider "vultr" {
}

module "mailcow" {
  source = "./../../"

  ssh_key_ids = [vultr_ssh_key.my_ssh_key.id,]
}

resource "vultr_ssh_key" "my_ssh_key" {
  name    = "my-ssh-key"
  ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDH8GK5I8M8sejOPxk9emlFn4I0JkE5iidmH6kt66e5vkCD5tvdfcNOe/2GK7WzgXFa4CZCKJ6IyJjzWM/mDVoGZuOUL1VdEAofxenpIOYZSLQAURwhIrxPQaZ2BarUrpTcUAGyjotpWCnve+N3yUM8d4LNALvHuweBgkC7CIiC8AH2dpYwgVHRKflct1E70bkUetgdgUA3VnPP8dOktBEbRwyCj65NmxjPYVu968aMq9pG50INKcePNXamMoGlH5Q2WECJTa/y4mpTWvfui75RLjOxSj1D016YnTGSK3jWER8lc9YyixWUz7v5W5pKhCeYQMY8lgkY6RAArLB0Vb6QL8N/YmlnWaxsI+XifTTigIb0S40gLiFbPuUmezSCgK173mUrlpjDz+8oyL49j8yVgf64T0GwLENMbAJDBmWv/nGmeKwZz+bpOgtPrtYaXXgCKZ4zC7aa3DVhQt+1WRcKGAsuk5B39RJcyozqIsrlE/jSPAcXV68yip2QY4l7SjTkE+pRGv8L6ssqx5vsHaPaiby833xhdsbjjSt/GzqqPXd7vX9mxX5dUFeMfmxM8FJtSciwNC06rULzoIbM9I4dULnbS5vcj0NW/GXLx86aI4nmKRzQ+NG6IK26bhCOMBh8+/6j/6qcTk9IC7QmFMzVhvT0LMR41vHGEqDyCXnmNw== cardno:000611332038"
}
