# This shellscript generates goreleaser.yaml with ldflags set to the first argument.
cat <<EOF
build:
  main: .
  ldflags: "$1"
  goos:
    - linux
    - darwin
    - windows
  goarch:
    - amd64
    - 386
archive:
  name_template: "{{.Binary}}-{{.Version}}-{{.Os}}-{{.Arch}}"
  replacements:
    amd64: amd64
    darwin: darwin
    linux: linux
    windows: windows
EOF
