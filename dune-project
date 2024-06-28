(lang dune 3.16)

(name omagat)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Angga")

(maintainers "Ya siapa lagi kalau bukan gw")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name omagat)
 (synopsis "dongok")
 (description "jemboets apa yang panjang? yak betul deskripsi lu kek jembot")
 (depends ocaml dune cohttp cohttp-lwt-unix lwt_ssl yojson)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
