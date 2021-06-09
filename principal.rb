require "./conta_bancaria"
require "./conta_com_taxa"

conta1 = ContaComTaxa.new("Breno", 100)
conta2 = ContaBancaria.new("Pedro", 200)

conta1.transferir(conta2,50)

p conta2.saldo
p conta1.saldo