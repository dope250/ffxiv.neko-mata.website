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

To create a new blogpost:
> hugo new content /blog/%Name%.md

Possible Color pallets:

* [nier automata jean paul Color Palette](https://www.color-hex.com/color-palette/1023731)
* [Black Grey Red White Dark Space](https://colorhunt.co/palette/0000003e3636d72323f5eded)
* Flieder
* Magenta
* [Katzenpfötchen - Light Only](https://colorhunt.co/palette/f6f5f2f0ebe3f3d0d7ffefef)
* [Blue - Light Only](https://colorhunt.co/palette/92c7cfaad7d9fbf9f1e5e1da)
* [Warme Farbtöne](https://coolors.co/palette/628395-96897b-dfd5a5-dbad6a-cf995f)
* [Vintage Warm](https://coolors.co/palette/264653-2a9d8f-e9c46a-f4a261-e76f51)

Fixes:
* [postcss on Windows issue](https://github.com/gohugoio/hugo/issues/7333#issuecomment-1048571703)

Shortcuts:
* [Emoji Cheat Sheet](https://gohugo.io/quick-reference/emojis/)
