# Copyright 2025 Ian Lewis
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM ubuntu:24.04@sha256:1e622c5f073b4f6bfad6632f2616c7f59ef256e96fe78bf6a595d1dc4376ac02

# renovate: datasource=repology depName=ubuntu_24_04/texlive-latex-base versioning=loose
ENV TEXLIVE_BASE_VERSION="2023.20240207-1"
# renovate: datasource=repology depName=ubuntu_24_04/texlive-latex-extra versioning=loose
ENV TEXLIVE_EXTRA_VERSION="2023.20240207-1"
# renovate: datasource=repology depName=ubuntu_24_04/texlive-lang-all versioning=loose
ENV TEXLIVE_LANG_VERSION="2023.20240207-1"

ENV TEXLIVE_LATEX_BASE_VERSION="${TEXLIVE_BASE_VERSION}"

ENV TEXLIVE_LUATEX_VERSION="${TEXLIVE_BASE_VERSION}"
ENV TEXLIVE_XETEX_VERSION="${TEXLIVE_BASE_VERSION}"
ENV TEXLIVE_PICTURES_VERSION="${TEXLIVE_BASE_VERSION}"

ENV TEXLIVE_LATEX_EXTRA_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_FONTS_EXTRA_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_FORMATS_EXTRA_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_PSTRICKS_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_PUBLISHERS_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_GAMES_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_MUSIC_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_HUMANITIES_VERSION="${TEXLIVE_EXTRA_VERSION}"
ENV TEXLIVE_SCIENCE_VERSION="${TEXLIVE_EXTRA_VERSION}"

ENV TEXLIVE_LANG_ALL_VERSION="${TEXLIVE_LANG_VERSION}"

# Install dependencies & all languages.
RUN apt update && \
    apt install -y \
        texlive-latex-base=${TEXLIVE_LATEX_BASE_VERSION} \
        texlive-pictures=${TEXLIVE_PICTURES_VERSION} \
        texlive-luatex=${TEXLIVE_LUATEX_VERSION} \
        texlive-xetex=${TEXLIVE_XETEX_VERSION} \
        texlive-latex-extra=${TEXLIVE_LATEX_EXTRA_VERSION} \
        texlive-fonts-extra=${TEXLIVE_FONTS_EXTRA_VERSION} \
        texlive-formats-extra=${TEXLIVE_FORMATS_EXTRA_VERSION} \
        texlive-pstricks=${TEXLIVE_PSTRICKS_VERSION} \
        texlive-games=${TEXLIVE_GAMES_VERSION} \
        texlive-music=${TEXLIVE_MUSIC_VERSION} \
        texlive-publishers=${TEXLIVE_PUBLISHERS_VERSION} \
        texlive-humanities=${TEXLIVE_HUMANITIES_VERSION} \
        texlive-science=${TEXLIVE_SCIENCE_VERSION} \
        texlive-lang-all=${TEXLIVE_LANG_ALL_VERSION}

CMD ["lualatex"]
