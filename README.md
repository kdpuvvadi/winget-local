# winget local

Winget manifest repo for personal use

## Usage

Usage from local repo

```pwsh
winget install -m .\manifests\7\7zip\7zip\22.01\
```

Usage from source

```pwsh
winget install 7zip -s puvvadi
```

## Custom source

Adding source

```pwsh
winget source add -n puvvadi https://winget.puvvadi.me/cache
```

## License

[MIT](LICENSE)
