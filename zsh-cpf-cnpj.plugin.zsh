# Função para gerar CPF válido e copiar para o clipboard
generate_cpf() {
    local cpf
    cpf=$(python3 -c "
import random

def calculate_digit(digits):
    sums = sum([digit * weight for digit, weight in zip(digits, range(len(digits) + 1, 1, -1))])
    result = sums % 11
    return 0 if result < 2 else 11 - result

cpf = [random.randint(0, 9) for _ in range(9)]
cpf.append(calculate_digit(cpf))
cpf.append(calculate_digit(cpf))
print('{}.{}.{}-{}'.format(''.join(map(str, cpf[:3])), ''.join(map(str, cpf[3:6])), ''.join(map(str, cpf[6:9])), ''.join(map(str, cpf[9:]))))")
    printf "$cpf" | pbcopy
    echo "CPF copied to clipboard: $cpf"
}

# Função para gerar CNPJ válido e copiar para o clipboard
generate_cnpj() {
    local cnpj
    cnpj=$(python3 -c "
import random

def calculate_digit(digits, multipliers):
    sums = sum([digit * multipliers[i % len(multipliers)] for i, digit in enumerate(digits)])
    result = sums % 11
    return 0 if result < 2 else 11 - result

cnpj = [random.randint(0, 9) for _ in range(8)] + [0, 0, 0, 1]
multipliers1 = [5, 4, 3, 2, 9, 8, 7, 6]
multipliers2 = [6, 5, 4, 3, 2, 9, 8, 7]
cnpj.append(calculate_digit(cnpj, multipliers1))
cnpj.append(calculate_digit(cnpj, multipliers2))
print('{}.{}.{}-{}/{}'.format(''.join(map(str, cnpj[:2])),
                              ''.join(map(str, cnpj[2:5])),
                              ''.join(map(str, cnpj[5:8])),
                              ''.join(map(str, cnpj[8:12])),
                              ''.join(map(str, cnpj[12:]))))")
    printf "$cnpj" | pbcopy
    echo "CNPJ copied to clipboard: $cnpj"
}

# Alias para facilitar o uso
alias cpf='generate_cpf'
alias cnpj='generate_cnpj'