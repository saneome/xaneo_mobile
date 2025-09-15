@echo off
echo ========================================
echo 🎨 Автоматическая инверсия изображений
echo ========================================
echo.

REM Проверяем наличие Python
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python не найден!
    echo 📥 Скачайте Python с https://python.org
    pause
    exit /b 1
)

REM Проверяем наличие pip
pip --version >nul 2>&1
if errorlevel 1 (
    echo ❌ pip не найден!
    echo 📥 Установите pip или используйте get-pip.py
    pause
    exit /b 1
)

REM Устанавливаем зависимости
echo 📦 Установка зависимостей...
pip install -r requirements.txt

if errorlevel 1 (
    echo ❌ Ошибка установки зависимостей!
    pause
    exit /b 1
)

echo.
echo ✅ Зависимости установлены
echo.

REM Запускаем скрипт инверсии
echo 🚀 Запуск инверсии изображений...
python image_inverter.py %*

echo.
echo ========================================
echo ✨ Готово!
echo ========================================
pause
