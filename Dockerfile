FROM ocaml/ocaml:ubuntu-16.04
MAINTAINER Reiji Sakao <reiji.sakao@gmail.com>

RUN apt update && apt upgrade -y
RUN apt install -y vim rlwrap language-pack-ja-base language-pack-ja
RUN echo "alias ocaml='rlwrap ocaml'" >> ~/.bashrc && echo "alias ocamlja='LANG=ja_JP.utf8 rlwrap ocaml'" >> ~/.bashrc
RUN echo 'let printer ppf = Format.fprintf ppf "\"%s\"";;' >> ~/.ocamlinit && echo '#install_printer printer' >> ~/.ocamlinit

CMD ["bash"]
