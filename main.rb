# Função para converter código Morse em caractere
def morse_to_char(morse)
  case morse
  when '.-' then 'A'
  when '-...' then 'B'
  when '-.-.' then 'C'
  when '-..' then 'D'
  when '.' then 'E'
  when '..-.' then 'F'
  when '--.' then 'G'
  when '....' then 'H'
  when '..' then 'I'
  when '.---' then 'J'
  when '-.-' then 'K'
  when '.-..' then 'L'
  when '--' then 'M'
  when '-.' then 'N'
  when '---' then 'O'
  when '.--.' then 'P'
  when '--.-' then 'Q'
  when '.-.' then 'R'
  when '...' then 'S'
  when '-' then 'T'
  when '..-' then 'U'
  when '...-' then 'V'
  when '.--' then 'W'
  when '-..-' then 'X'
  when '-.--' then 'Y'
  when '--..' then 'Z'
  when '-----' then '0'
  when '.----' then '1'
  when '..---' then '2'
  when '...--' then '3'
  when '....-' then '4'
  when '.....' then '5'
  when '-....' then '6'
  when '--...' then '7'
  when '---..' then '8'
  when '----.' then '9'
  when '.-.-.-' then '.'
  when '--..--' then ','
  when '..--..' then '?'
  when '-....-' then '-'
  when '/' then ' '
  else
    'ERRO! CÓDIGO MORSE NÃO RECONHECIDO'
  end
end

# Função principal para converter código Morse em texto
def morse_to_text(morse_code)
  state = :q0
  text = ''
  morse_char = ''

  morse_code.each_char do |char|
    case state
    when :q0
      if char != ' ' && char != '/' && (char == '.' || char == '-')
        morse_char += char
        state = :q1
      elsif char == '/'
        text += ' '
      end
    when :q1
      if char != ' ' && char != '/' && (char == '.' || char == '-')
        morse_char += char
      else
        text += morse_to_char(morse_char)
        morse_char = ''
        state = :q0
      end
    end
  end

  # Processa o último caractere Morse se ainda não foi processado
  text += morse_to_char(morse_char) unless morse_char.empty?

  text
end


input_morse = '- . ... - . / - .-. .- -.. ..- - --- .-. / -.. . / -- --- .-. ... .'
text_result = morse_to_text(input_morse)
puts "Código Morse: #{input_morse}"
puts "Texto: #{text_result.downcase}"