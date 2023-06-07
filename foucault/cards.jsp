<!-- <%@ page import="locadora.controle.Controle" %> -->
<!-- <%@ page import="locadora.modelo.Filme" %> --> 
<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html> <!-- https://codepen.io/anilmauganj/pen/rNyVLov -->
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Locadora - Filmes</title>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css'>
    </head>
    <body>
        <form id="flowForm" action="Pages" method="GET">
            <input type="hidden" id="operacao" name="operacao" value="" />
            <input type="hidden" id="query" name="query" value="" />
        </form>
            
        <header class="head">
            <i name="inserir" class="fa-solid fa-circle-plus addIcon" onclick="enviar(event);"></i>
            <select id="selecionar" name="selecionar" class="box non-btn">
                <option placeholder="">Sinopse</option>
                <option>ID</option>
                <option>Diretor</option>
                <option>Preço</option>
            </select>
            <div class="">
                <input class="box non-btn non-btn-input" id="search" type="text" placeholder="Pesquisar..." />
            </div>
            <div class="">
                <button class="btn-pesquisar box" name="buscar" onclick="enviar(event);" type="button">Pesquisar</button>
            </div>
        </header>
            
            
            
        <!--LOOP_BEGIN-->
        <figure class="movie">
            <div class="movie__hero">
                <img src="getImageURL" alt="Rambo" class="movie__img">
            </div>
            <div class="movie__content">
                <div class="movie__title">
                    <h1 class="heading__primary">getNome
                        <i class="star fas fa-star"></i>
                        <i class="star fas fa-star"></i>
                        <i class="star fas fa-star"></i>
                        <i class="star fas fa-star"></i>
                        <i class="star fas fa-regular fa-star-half"></i>
                    </h1>
                    <div class="movie__tag movie__tag--2">#getId</div>
		    <div name="categoria" class="movie__tag movie__tag--1" onclick="enviar(event);" value="getCategoria" >#getCategoria</div>
                    <div class="ip-conteiner">
                    <i name="atualizar" class="ip fas fa-pen-to-square livro" onclick="enviar(event);" value="getId"></i>
                    <i name="deletar" class="ip fas fa-trash-can lixo " onclick="enviar(event);" value="getId"></i>
		    </div>
		    <style>
			
		    </style>
                    </div>
                <p class="movie__description">
                    getSinopse
                </p>
                <div class="movie__details">
                    <p class="movie__detail diretor"><span class="icons icons-red"><i class="fas fa-video"></i> </span>
                        getDiretor</p>
                    <p class="movie__detail"><span class="icons icons-grey"><i class="fas fa-clock"></i> </span>getDuracao</p>
                    <p class="movie__detail"><span class="icons icons-yellow"><i class="fas fa-regular fa-calendar"></i>
                        </span>getData_de_lancamento</p>
                </div>
            </div>
            <div class="movie__price">R$getPreco</div>
        </figure>
        
        <br>    
        <br> <!-- https://ordinarycoders.com/blog/article/tailwindcss-custom-forms -->
        <!--LOOP_END-->
            
        
        <style>
            /*  
        background-color: #A9C9FF;
        background-image: linear-gradient(180deg, #A9C9FF 0%, #FFBBEC 100%);
       
            My colors = F4623A     263238   !   FFBBEC           A9C9FF
                        Laranja    Cinza      ROSA CLARO      AZUL CLARO
            */
            @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap');
            :root {
                --color1: #F4623A;
                --color2: #FFBBEC;
                --atualizar-left: 11px;
                --deletar-left: 11px;
                --atualizar-top: -38px;
                --deletar-top: -16px;
                --header-height: 120px;
                --header-margin-bottom: 40px;
            }
            
            .movie__tag--1:hover {
                    -webkit-animation-name: fa-bounce;
                    animation-name: fa-bounce;
                    -webkit-animation-duration: var(--fa-animation-duration,1s);
                    animation-duration: var(--fa-animation-duration,1s);
                    -webkit-animation-iteration-count: var(--fa-animation-iteration-count,infinite);
                    animation-iteration-count: var(--fa-animation-iteration-count,infinite);
                    -webkit-animation-timing-function: var(--fa-animation-timing,linear);
                    animation-timing-function: var(--fa-animation-timing,linear);
                    -webkit-animation-delay: var(--fa-animation-delay,0s);
                    animation-delay: var(--fa-animation-delay,0s);
                    -webkit-animation-direction: var(--fa-animation-direction,normal);
                    animation-direction: var(--fa-animation-direction,normal);
            }
            
            .livro:hover {
                    -webkit-animation-name: fa-flip;
                    animation-name: fa-flip;
                    -webkit-animation-delay: var(--fa-animation-delay,0s);
                    animation-delay: var(--fa-animation-delay,0s);
                    -webkit-animation-direction: var(--fa-animation-direction,normal);
                    animation-direction: var(--fa-animation-direction,normal);
                    -webkit-animation-duration: var(--fa-animation-duration,1s);
                    animation-duration: var(--fa-animation-duration,1s);
                    -webkit-animation-iteration-count: var(--fa-animation-iteration-count,infinite);
                    animation-iteration-count: var(--fa-animation-iteration-count,infinite);
                    -webkit-animation-timing-function: var(--fa-animation-timing,ease-in-out);
                    animation-timing-function: var(--fa-animation-timing,ease-in-out);
            }
            
            .lixo:hover {
                    -webkit-animation-name: fa-shake;
                    animation-name: fa-shake;
                    -webkit-animation-duration: var(--fa-animation-duration,1s);
                    animation-duration: var(--fa-animation-duration,1s);
                    -webkit-animation-iteration-count: var(--fa-animation-iteration-count,infinite);
                    animation-iteration-count: var(--fa-animation-iteration-count,infinite);
                    -webkit-animation-timing-function: var(--fa-animation-timing,linear);
                    animation-timing-function: var(--fa-animation-timing,linear);
                    -webkit-animation-delay: var(--fa-animation-delay,0s);
                    animation-delay: var(--fa-animation-delay,0s);
                    -webkit-animation-direction: var(--fa-animation-direction,normal);
                    animation-direction: var(--fa-animation-direction,normal);
            }
            
            .addIcon {
                width: 30px;
                font-size: 24px;
                transition: color 0.5s ease;
            }
            
            .addIcon:hover {
                color: white;
                
            }
            
            .btn-pesquisar {
                background: linear-gradient(45deg, #f49d3a 0%, #F4623A 28%, #8a23dd 91%, #8a23dd 100%);
                transition: background 0.3s ease;
            }
            
            .btn-pesquisar:hover {
                background: linear-gradient(45deg, #8a23dd 0%, #8a23dd 28%, #F4623A 91%, #f49d3a 100%);
            }
            
            .non-btn {
                padding-left: 10px;
            }
            
            .non-btn::placeholder {
                color: rgba(255, 255, 255, 0.8); /* Change to the desired color */
             }
            
            .non-btn-input {
                width: 400px !important;
            }
            
            .box {
                width: 200px;
                height: 40px;
                background-color: rgba(0, 0, 0, 0.5);
                color: white;
                border: 0;
                font-size: 16px;
                box-shadow: 4px 5px 10px 0px rgb(0 0 0 / 20%);
                
            }
            
            .head {
                display: flex;
                justify-content: center;
                align-items: center;
                background: transparent/*transparent*/;
                width: 100%;
                height: var(--header-height);
                margin-bottom: var(--header-margin-bottom);
            }
            
            
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            .ip-conteiner {
                position: relative;
                writing-mode: vertical-lr;
                display: flex;
            }
            .ip-conteiner .ip {
                position: absolute;
                top: var(--atualizar-top);
                left: var(--atualizar-left);
                color: gimgray !important;
            }

            .fa-trash-can {
                top: var(--deletar-top) !important;
                left: var(--deletar-left) !important;
            }

            body {
                font-family: 'Roboto', sans-serif;
                font-size: 16px;
                font-weight: 300;
                color: #444;
                background:linear-gradient(to right bottom, var(--color1) 0%, var(--color2) 100%); 
                /*  height: 100vh;  REMOVE THE HEIGH WHEN LOOP */
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .diretor {
            }
            .movie {
                max-width: 800px;
                border-radius: 5px;
                display: flex;
                box-shadow: 0 5px 20px 10px rgba(0, 0, 0, .2);
                overflow: hidden;
            }

            .movie__hero {
                flex: 0 0 45%;
                overflow: hidden;
            }
            
            
            .movie__img {
                width: 100%;
                height: 100%;
                display: block;
            }

            .movie__content {
                background-color: #fff;
                flex: 1;
                padding: 35px 30px; 
                display: flex;
                flex-direction: column;
            }

            .movie__price {
                background:linear-gradient(to bottom, var(--color1) 0%, #A9C9FF 100%);
                flex: 0 0 50px;
                font-size: 18px;
                font-weight: bold;
                letter-spacing: 2px;
                color: rgb(255, 255, 255);
                writing-mode: vertical-lr;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .movie__title {
                display: flex;
                align-items: center;
                margin-bottom: 20px;
            }

            .heading__primary {
                font-size: 16px;
                margin-right: auto;
                color: royalblue;
            }

            .star {
                background:linear-gradient(to bottom, salmon 15%, yellow 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                font-size: 12px;
            }

            .movie__tag {
                font-size: 10px;
                color: #fff;
                padding: 2px 7px;
                border-radius: 100px;
                margin-right: 8px;
                display: block;
                text-transform: uppercase;

            }

            .movie__tag--1 {
                background-color: #A9C9FF;
            }

            .movie__tag--2 {
                background-color:#FFBBEC;
            }

            .movie__description {
                font-size: 14px;
            }

            .movie__details {
                display: flex;
                margin: auto;
		        align-items: flex-end;
		        height: 35px;
            }

            .movie__detail {
                font-size: 13px;
                margin-right: 20px;
                display: flex;
                align-items: center;
            }

            .icons i {
                margin-right: 3px;
                font-size: 18px;
            }

            .icons-red {
                color: salmon;
            }
            .icons-grey {
                color: grey;
            }

            .icons-yellow {
                color: rgb(190, 190, 71);

            }
        </style>
        <script>
            var test;
        const enviar = props => {
            test = props;
            const form = document.getElementById('flowForm');
            const operacao = document.getElementById('operacao');
            const query = document.getElementById('query');
            const target = props.target.getAttribute('name');
            
            if (target === 'inserir') {
                operacao.value = 'inserir';
            } else if (target === 'buscar') {
                operacao.value = document.getElementById('selecionar').value;
                query.value = document.getElementById('search').value;
            } else if (target === 'atualizar') {
                operacao.value = 'atualizar';
                query.value = props.target.getAttribute('value');
            } else if (target === 'deletar') {
                operacao.value = 'deletar';
                query.value = props.target.getAttribute('value');
            } else if (target === 'categoria') {
                operacao.value = 'categoria';
                query.value = props.target.getAttribute('value');
            }
                        
            form.submit();
            /*
            Update:
              Operacao="atualizar"
              Query="id"

            Deletar
              Operacao="deletar"
              Query="id"

            Select
              Operacao="id" | "sinopse" | "diretor" | "preco"
              Query="searchbar text"

            Inserir
              Operacao="inserir"
              Query=""
            
            Categoria
              Operacao="categoria"
              Query="categoria nome'
            */
        };
            
           
        </script>
    </body>

</html>
