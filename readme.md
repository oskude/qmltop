# qmltop

Attempt to rewrite [ssetop](https://github.com/oskude/ssetop) with [PySide2](https://wiki.qt.io/Qt_for_Python) and [QML](http://doc.qt.io/qt-5/qmlapplications.html)

## Dependencies

- python 3.7
- pyside2 5.11
- qt5-base 5.11
- qt5-declarative 5.11

## Run the prototype

```shell
python ui.py
```

## Workarounds for old systems

```shell
python -m venv venv
# Linux
source venv/bin/activate
# Windows
call venv\Scripts\activate.bat
python -m pip install pip setuptools wheel --upgrade
python -m pip install PySide2
```
