#!/bin/bash

function f_add_user_main() {
  f_out "Adding User"

  useradd -m -s /bin/bash -G wheel kevin
}
