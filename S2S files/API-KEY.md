# Writing with an Anthropic API key

Most people don't need this: ChatGPT Free and a Claude plan both write for
nothing extra (see [SETUP.md](SETUP.md) section 4). An API key is for writing
with Claude when you have no Claude plan. You pay per issue, about $1 with
Opus 5.5 at four pieces an issue (SETUP.md has the numbers).

## 1. Get a key

1. Go to [platform.claude.com](https://platform.claude.com) and sign in or
   make an account.
2. Add a payment method and a little credit (Billing).
3. **API keys ▸ Create key.** Copy it. It starts with `sk-ant-`. You only see
   it once, so keep it somewhere safe.

## 2. Give it to S2S

S2S reads the key from a Windows setting called `ANTHROPIC_API_KEY`.

1. Press **Start**, type **environment**, and open **Edit environment
   variables for your account**.
2. Under **User variables**, click **New...**
3. Variable name: `ANTHROPIC_API_KEY`. Variable value: paste your key.
   Click **OK**, then **OK** again.
4. **Close the S2S window and double-click `S2S.bat` again.** S2S only sees
   the key when it starts.

On a Mac, add `export ANTHROPIC_API_KEY=sk-ant-...` to `~/.zshrc`, open a new
Terminal, and start S2S again.

## 3. Pick it

**Settings ▸ Writer**: the API key option now appears in the list. Pick it,
then Generate.

## Keep it safe

The key is like a password to your billing. Don't paste it into Discord or a
screenshot. If it ever leaks, delete it on platform.claude.com and make a new
one. To stop using it, delete the `ANTHROPIC_API_KEY` variable the same way
you added it and restart S2S.
