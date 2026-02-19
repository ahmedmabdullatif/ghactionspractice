const sayHello = (name) => {
    return `Hello ${name}`;
};

// تصدير الدالة لتكون متاحة للاستخدام في ملفات أخرى
module.exports = sayHello;

// if (require.main === module) {
//     console.log(sayHello("World"));
// }