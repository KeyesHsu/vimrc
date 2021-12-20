<h1 align="center">Welcome to Keyes's vimrc 👋</h1>
<p>
  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> A simple vim configuration.

It's the smallest version that can be used comfortably for me, will continue to use and tweak.

## Install


Create backups, swapfiles and undo history directory if does not exists.

```bash
mkdir -p ~/.vim/{backups,swaps,undo}
```

Link the [vimrc](vimrc) to `~/.vimrc`

```bash
ln -s "$PWD/vimrc" ~/.vimrc
```

Or

```bash
cp vimrc ~/.vimrc
```

## Uninstall

Run `rm ~/.vimrc`

## Consistent experience for IdeaVim

Link the [ideavimrc](ideavimrc) to `~/.ideavimrc`:

```bash
ln -s "$PWD/ideavimrc" ~/.ideavimrc
```

Or:

```bash
cp ideavimrc ~/.ideavimrc
```

## Author

👤 **Keyes Hsu**

* Github: [@KeyesHsu](https://github.com/KeyesHsu)

## Show your support

Give a ⭐️ if this project helped you!


***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
