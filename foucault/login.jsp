<%@ page import="locadora.controle.Controle" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - Projeto Locadora</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Contact-->
        <section class="page-section" id="contact" style="padding: 1rem 0;">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">Fazer Login</h2>
                        <hr class="divider" />
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="contactForm" action="" method="GET" data-sb-form-api-token="API_TOKEN">
                            <!-- Username input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="usuario" id="name" type="text" placeholder="Digite seu nome de usuário..." data-sb-validations="required" />
                                <label for="name">Nome de usuário</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">Um nome de usuário é obrigatório.</div>
                            </div>
                            <!-- Password input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="senha" id="phone" type="password" placeholder="Digite sua senha..." data-sb-validations="required" />
                                <label for="phone">Senha</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Uma senha é obrigatória.</div>
                            </div>
                            <!-- Cadastradar msg-->
                                <div class="row gx-4 gx-lg-5">
                    <!--<div class="col-lg-8 col-xl-6 text-center">-->
                                    <div class="col-lg-8">
                                        <p class="text-muted mb-4">Não é cadastrado? 
                                        <a href="Cadastro">Cadastra-se</a>
                                        </p>
                                    </div>
                                </div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder"></div> <!-- MUDAR O MENSAGEM COM JAVA -->
                                    <!--To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>-->
                                </div>
                            </div>
                            
                            <div>
                                <div class="text-center mb-3">
                                    <div id="loginErrado" class="fw-bolder" style="color: red; display: none;">
                                        <h4>O nome de usuário ou <br>a senha estão errados!</h4>
                                        <hr class="divider">
                                    </div>
                                </div>
                            </div>
                            
                            <div>
                                <div class="text-center mb-3">
                                    <div id="loginDBRuim" class="fw-bolder" style="color: red; display: none;">
                                        <hr class="divider">
                                        <h5>Não foi possível fazer o Login!</h5 >
                                        <h5>Provalvemente há um problema <br>com nossos servidores.</h5>
                                        <h5>Por favor, tente novamente mais tarte!</h5>
                                        <hr class="divider">
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Erro ao enviar o cadastrado!</div></div>
                            <!-- Submit Button-->
                            <div class="d-grid">
                                <!--<a href="construindo.html"> -->
                                <button class="btn btn-primary btn-xl disabled" onclick="submitForm(); " id="submitButton" type="submit">Enviar</button></div>
                                <script>
                                    const submitForm = () => document.getElementById("contactForm").submit();
                                    const loginFlow = props =>  {
                                        if(props === 400)
                                            document.getElementById('loginErrado').style.display = 'block';
                                        else if (props === 500) {
                                            document.getElementById('submitButton').style.display = 'none';
                                            document.getElementById('loginDBRuim').style.display = 'block';
                                        } else
                                            window.location.replace("http://localhost:8084/Locadora_web/Pages");
                                    };
                                </script>
                                <%
                                String[] dados = {
                                    request.getParameter("usuario"),
                                    request.getParameter("senha")
                                };
                                boolean isNull = false;
                                for(String dado : dados)
                                    if(dado == null || dado.isEmpty())
                                        isNull = true;
                                if (!isNull)
                                    out.println(
                                            "<script>loginFlow(" + 
                                            Controle.controle(dados, "FETCH_USER") 
                                            + ");</script>"
                                    );
                            %>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>