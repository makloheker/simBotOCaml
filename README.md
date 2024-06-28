# Bot Simsimi di OCaml

## require

- `ocaml`
- `opam`
- `dune`
- dll (mals ngtik gw)

## install

```bash
sudo pacman -S ocaml opam
```

## install dune untuk build system ocaml

```bash
eval $(opam env)
```

```bash
opam install dune
```

## install depen

```bash
opam install cohttp cohttp-lwt-unix conduit-lwt-unix lwt_ssl yojson
```

## kompail

```bash
dune build
```

## crot

```bash
dune exec omagat
```
