@echo off
echo ========================================
echo 🧹 Очистка и повторная генерация
echo ========================================
echo.

REM Очистка папки light
if exist "assets\img\light" (
    echo 🗑️  Очистка папки assets\img\light...
    rmdir /s /q "assets\img\light"
    mkdir "assets\img\light"
    echo ✅ Папка очищена
) else (
    mkdir "assets\img\light"
    echo 📁 Создана папка assets\img\light
)

echo.
echo 🚀 Генерация инвертированных изображений...
python image_inverter.py --force

echo.
echo ========================================
echo ✨ Готово! Чистая генерация завершена
echo ========================================
pause
