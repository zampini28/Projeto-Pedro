<!-- <%@ page import="locadora.controle.Controle" %> -->
<!-- <%@ page import="locadora.modelo.Filme" %> -->
<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Locadora - Atualizar</title>
	<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body>
	<div>
  <div class="md:grid md:grid-cols-3 md:gap-6 conteiner">
    <div class="mt-5 md:mt-0 md:col-span-2">
      <form action="Atualizar" method="GET">
        <input name="id" type="hidden" value="getId">
        <div class="shadow sm:rounded-md sm:overflow-hidden">
          <div class="px-4 py-5 bg-white space-y-6 sm:p-6">
              
              <div class="col-span-6 sm:col-span-4">
                <label for="nome" class="block text-sm font-medium text-gray-700">Nome</label>
                <input type="text" name="nome" id="nome" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" value="getNome">
              </div>
              
              <div class="col-span-6 sm:col-span-4">
                <label for="diretor" class="block text-sm font-medium text-gray-700">Diretor</label>
                <input type="text" name="diretor" id="diretor" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" value="getDiretor">
              </div>
              
              <div>
              <label for="sinopse" class="block text-sm font-medium text-gray-700">
                Sinopse
              </label>
              <div class="mt-1">
                <textarea id="sinopse" name="sinopse" rows="3" class="shadow-sm focus:ring-indigo-500 focus:border-indigo-500 mt-1 block w-full sm:text-sm border-gray-300 rounded-md">getSinopse</textarea>
              </div>
            </div>
              
              <div class="col-span-6 sm:col-span-4">
                <label for="categotia" class="block text-sm font-medium text-gray-700">Categoria</label>
                <input type="text" name="categotia" id="categotia" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" value="getCategoria">
              </div>
              
              <div class="col-span-6 sm:col-span-4">
                <label for="estrelas" class="block text-sm font-medium text-gray-700">Estrelas</label>
                <input type="number" name="estrelas" id="estrelas" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" value="getEstrelas">
              </div>
              
              <div class="col-span-6 sm:col-span-4">
                <label for="data_de_lancamento" class="block text-sm font-medium text-gray-700">Data de Lançamento</label>
                <input type="text" name="data_de_lancamento" id="data_de_lancamento" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" value="getData_de_lancamento">
              </div>
              
              <div class="col-span-6 sm:col-span-4">
                <label for="duracao" class="block text-sm font-medium text-gray-700">Duração</label>
                <input type="text" name="duracao" id="duracao" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" value="getDuracao">
              </div>
              
              <div class="col-span-6 sm:col-span-4">
                <label for="preco" class="block text-sm font-medium text-gray-700">Preço</label>
                <input type="number" name="preco" id="preco" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" value="getPreco">
              </div>
              
            <div class="grid grid-cols-3 gap-6">
              <div class="col-span-3 sm:col-span-2">
                <label for="company_website" class="block text-sm font-medium text-gray-700">
                  Imagem URL
                </label>
                <div class="mt-1 flex rounded-md shadow-sm">
                  <span class="inline-flex items-center px-3 rounded-l-md border border-r-0 border-gray-300 bg-gray-50 text-gray-500 text-sm">
                    http://
                  </span>
                  <input type="text" name="company_website" id="company_website" class="focus:ring-indigo-500 focus:border-indigo-500 flex-1 block w-full rounded-none rounded-r-md sm:text-sm border-gray-300" value="getImageURL">
                </div>
              </div>
            </div>
              
              <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">
            <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
              Salvar
            </button>
          </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
        <style>
            :root {
                --color1: #F4623A;
                --color2: #FFBBEC;
                --conteiner-left: 17.5rem;
            }
            
            .conteiner {
                position: relative;
                top: 50px;
                left: var(--conteiner-left);
            }
            
            html {
                background: linear-gradient(to right bottom, var(--color1) 0%, var(--color2) 100%);
                height: 100%;
            }

        </style>
    </body>
</html>
