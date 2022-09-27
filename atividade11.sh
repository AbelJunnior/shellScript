#!/bin/bash

if [ ! -d ~/Bruno ]; then
        echo 'a) Criando diretório com seu nome...'
        mkdir ~/Bruno

        if [ "$?" -eq "0"  ]; then
                echo "--Diretório criado com sucesso."
                ls
                echo "--Acessando o diretório com o nome Bruno..."
                cd Bruno
                echo ""

                echo "b) Criando diretório com o nome Resultado..."
                mkdir Resultado
                echo "--Diretório criado com sucesso."
                ls
                echo ""

                echo "c) Baixando o arquivo hospedado em http://vanilton.net/v1/download/zip.zip..."
                wget "http://vanilton.net/v1/download/zip.zip"
                echo "--Download realizado com sucesso."
                ls
                echo ""

                echo "d) Descompactando o arquivo Zip..."
                unzip zip.zip
                echo "--Arquivo descompactado com sucesso."
                ls
                echo ""

                echo "e) Movendo o arquivo descompactado para o diretório Resultado."
                mv readme.md Resultado
                cd Resultado
                ls
                cd ..
                echo ""
                
                echo "f) Removendo o arquivo baixado..."
                rm -rf zip.zip
                echo "--Arquivo zip removido com sucesso."
                ls
                echo ""

	else
                echo "Erro ao criar diretório."
        fi

        else
        echo "Diretório já existe!"

fi
