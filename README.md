<p align="center">
  <a href="https://twitter.com/codefordao"><img src="https://avatars.githubusercontent.com/u/97301607?s=200&u=d0a9f88d13d7d7dd5b37c09fdd802c9fe378d029&v=4"/></a>
</p>
<h2 align="center">
  CodeforDAO Contracts in Cairo (StarkNet)
</h2>
<p align="center">
  Base on, build upon and code for DAOs.
</p>
<p align="center">
  Make DAO the next generation of productivity tools for global collaboration.
</p>
<p align="center">
  Follow us on Twitter <a href="https://twitter.com/codefordao">@codefordao</a>.
</p>

<p align="center">
  <a href="https://github.com/CodeforDAO/contracts/">
    <img src="https://img.shields.io/badge/license-MIT-green.svg" alt="mit license"/>
  </a>
</p>

## Cairo-array-utils

This module is implemented on StarkNet in Cairo language. Using this module requires that you have a basic understanding of the Cairo language and python.

### Install

```bash
pip install git+https://github.com/CodeforDAO/cairo-array-utils.git
```

### APIs

```python
from codefordao.utils.array import Array

# APIs
Array.save(
  arr_len: felt,
  arr: felt*
) -> (key: ArrayInfo.key)

Array.get_item(
  key: ArrayInfo.key,
  index: felt
) -> (res: felt)

Array.get_array(
  key: ArrayInfo.key,
) -> (
  arr_len: felt,
  arr: felt*
)
```

### Set up the project

#### Create a Python virtual environment

```bash
python -m venv env
source env/bin/activate
```

#### 📦 Install the requirements

```bash
pip install -r requirements.txt
```

### ⛏️ Compile

```bash
nile compile --directory src
```

### 🌡️ Test

```bash
# Run all tests
pytest tests
```

## 📄 License

**cairo-array-utils** is released under the [MIT](LICENSE).
