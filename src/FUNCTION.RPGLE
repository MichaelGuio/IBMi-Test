**FREE

ctl-opt nomain;

dcl-proc SumarNumeros export;
  dcl-pi *n packed(15:5);
    numero1 packed(15:5) const;
    numero2 packed(15:5) const;
  end-pi;

  return (numero1 + numero2) * 30;
end-proc;