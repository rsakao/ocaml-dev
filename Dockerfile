FROM ocaml/ocaml:ubuntu-16.04
MAINTAINER Reiji Sakao <reiji.sakao@gmail.com>

RUN apt update
RUN apt install -y vim rlwrap language-pack-ja-base language-pack-ja
RUN alias ocaml='rlwrap ocaml' && alias ocamlja='LANG=ja_JP.utf8 rlwrap ocaml'

CMD ["bash"]
