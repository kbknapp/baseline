#!/bin/bash

function f_wslu_main() {
  f_out "Adding WSLU COPR Repo"

  $ADD_REPO_CMD "trustywolf/wslu"
  $INSTALL_CMD wslu
}
