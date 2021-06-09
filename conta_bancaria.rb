class ContaBancaria

    def initialize(proprietario,valor_inicial)
        @proprietario = proprietario
        @valor = valor_inicial
    end

    def transferir(conta, valor)
        if saldo > valor
            debitar(valor)
            conta.depositar(valor)
        else
            puts "Saldo insuficiente!"
        end
    end
    
    def saldo
        @valor
    end

    private def debitar(valor_para_debitar)
        @valor -= valor_para_debitar
    end

   protected def depositar(valor_para_somar)
        @valor += valor_para_somar
    end

end