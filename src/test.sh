#!/bin/bash

# 1. تعريف المتغيرات
EXPECTED_OUTPUT="Hello Ahmed"

# 2. تشغيل ملف الجافا سكريبت وتخزين النتيجة في متغير
# نستخدم node -e لاستدعاء الدالة من الملف وتمرير اسم لها
ACTUAL_OUTPUT=$(node -e "const sayHello = require('./src/app'); console.log(sayHello('Ahmed'))")

# 3. مقارنة النتيجة الفعلية بالمتوقعة
echo "Running Test..."
if [ "$ACTUAL_OUTPUT" == "$EXPECTED_OUTPUT" ]; then
    echo "✅ Test Passed!"
    exit 0
else
    echo "❌ Test Failed!"
    echo "Expected: $EXPECTED_OUTPUT"
    echo "Actual: $ACTUAL_OUTPUT"
    exit 1
fi