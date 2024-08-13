class Cuentabancaria {
  double _saldo;
  Cuentabancaria(this._saldo);
  void depositar(double deposito){
    _saldo += deposito;
  }
  double obtenersaldo(){
    return _saldo;
  }
}