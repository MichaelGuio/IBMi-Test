**FREE

dcl-pr SumarNumeros packed(15:5);
  numero1 packed(15:5) const;
  numero2 packed(15:5) const;
end-pr;

dcl-pr QCMDEXC extpgm('QCMDEXC');
  comando char(32702) const options(*varsize);
  longitud packed(15:5) const;
end-pr;

dcl-s resultado packed(15:5);
dcl-s comando char(20);

Dsply 'Hola mundo desde GitHub Actions';
resultado = SumarNumeros(10 : 20);
Dsply ('Resultado: ' + %char(resultado));

comando = 'DLYJOB DLY(60)';
QCMDEXC(comando : %len(%trim(comando)));

*Inlr = *ON;