# homebrew-fenestra

[English](README.md) · Português

Tap do Homebrew para o [Fenestra](https://github.com/benedetleandro/fenestra) — um
servidor local minúsculo que abre builds de `dist/index.html` no seu navegador.

## Instalar

O Homebrew exige confiar em taps de terceiros antes de carregar as formulas. É um
comando extra, uma vez só:

```bash
brew tap benedetleandro/fenestra
brew trust benedetleandro/fenestra
brew install fenestra
```

Depois, para instalações futuras ou uma máquina nova:

```bash
brew install benedetleandro/fenestra/fenestra
```

## O que você leva

O CLI `fenestra` (~6 MB, estático, sem runtime):

```bash
fenestra ~/projetos/app/dist/index.html
fenestra --browsers
fenestra --browser firefox
fenestra --port 8080 ~/index.html
```

## O que você não leva

O app do Finder. O `Fenestra.app` é um bundle sem assinatura, então o Gatekeeper
bloqueia a menos que seja compilado localmente. Use o
[kit macos/](https://github.com/benedetleandro/fenestra/tree/main/macos) para isso.

## Licença

MIT. A formula instala apenas o binário pré-compilado publicado na release do
Fenestra; o código é público e o SHA-256 está fixado.
