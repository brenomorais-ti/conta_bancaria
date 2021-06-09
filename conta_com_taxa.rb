require "./conta_bancaria"
class ContaComTaxa < ContaBancaria
    def transferir(outra_conta, valor)
        if saldo > valor
            debitar(2)
            super
        end
    end
end