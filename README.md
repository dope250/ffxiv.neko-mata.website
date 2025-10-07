# ffxiv.neko-mata.website

[Link](https://neko-mata.de)

## How To

* Install Hugo extended (v0.151.0+extended+withdeploy)
* Install NPM
* Clone Repo
* npm install (>24)

Deploy via swa (build.sh). Don't forget to add the following to the .env:
```
AZURE_SUBSCRIPTION_ID=
AZURE_TENANT_ID=
SWA_CLI_LOGIN_CLEAR_CREDENTIALS=true
RAIDHELPER_API=
RAIDHELPER_SERVER_ID
```

Depoy via swa manually:
```
hugo -D
swa deploy --env production
```

For testing locally:
```
hugo server
```

To create a new blogpost:
```
hugo new content /blog/%Name%.md
```

or use the script:
```
./create_Blog.sh
```

Fixes:
* [postcss on Windows issue](https://github.com/gohugoio/hugo/issues/7333#issuecomment-1048571703)

Shortcuts:
* [Emoji Cheat Sheet](https://gohugo.io/quick-reference/emojis/)

ToDos:
* RSS Feed?
* Discord widget?
* Magazines (Tomberry Gazette?)?
* Eventposter?
* Widget: Authors
* Update Theme for newer hugo versions