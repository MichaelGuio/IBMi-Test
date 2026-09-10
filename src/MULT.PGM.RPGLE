**free
ctl-opt dftactgrp(*no) actgrp(*caller);

// Declaración de variables
dcl-s factor1 packed(5:2) inz(12.50);
dcl-s factor2 packed(5:2) inz(4.00);
dcl-s resultado packed(10:4);
dcl-s mensaje char(50);

// Operación matemática
resultado = factor1 * factor2;

// Preparar y mostrar el mensaje en pantalla
mensaje = 'Resultado de 12.50 x 4.00 = ' + %char(resultado);
dsply mensaje;

// Finalizar el programa indicando el Last Record
*inlr = *on;
