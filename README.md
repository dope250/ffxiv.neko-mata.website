# ffxiv.neko-mata.website

[Link](https://neko-mata.de)

Deploy via swa. Don't forget to add the following to the .env:
> AZURE_SUBSCRIPTION_ID=
> AZURE_TENANT_ID=
> SWA_CLI_LOGIN_CLEAR_CREDENTIALS=true

Depoy via swa:
> hugo -D
> swa deploy --env production

For testing locally:
> hugo server

Color pallets:

* [nier automata jean paul Color Palette](https://www.color-hex.com/color-palette/1023731)
* [Black Grey Red White Dark Space](https://colorhunt.co/palette/0000003e3636d72323f5eded)

Fixes:
* [postcss on Windows issue](https://github.com/gohugoio/hugo/issues/7333#issuecomment-1048571703)

Shortcuts:
* [Emoji Cheat Sheet](https://gohugo.io/quick-reference/emojis/)
