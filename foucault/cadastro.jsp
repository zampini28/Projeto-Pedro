<%@ page import="locadora.controle.Controle" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cadastro - Projeto Locadora</title>
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
                        <h2 class="mt-0">Fazer Cadastrado</h2>
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
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="email" id="email" type="email" placeholder="nome@exemplo.com" data-sb-validations="required,email" />
                                <label for="email">Endereço de email</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">Um email é obrigatório.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">O email não é válido.</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="senha" id="phone" type="password" placeholder="Digite sua senha..." data-sb-validations="required" />
                                <label for="phone">Senha</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Uma senha é obrigatória.</div>
                            </div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                            </div>
                            
                            <div>
                                <div class="text-center mb-3">
                                    <div id="cadastro_ok" class="fw-bolder" style="color: green; display: none;">
                                        <hr class="divider">
                                        <h4>Cadastro Realizado!</h4>
                                        <hr class="divider">
                                        <a class="btn btn-primary btn-xl" href="Login">Fazer Login!</a>
                                    </div>
                                </div>
                            </div>
                            
                            <div>
                                <div class="text-center mb-3">
                                    <div id="cadastro_presente" class="fw-bolder" style="color: #f4623a; display: none;">
                                        <hr class="divider">
                                        <h4>Uma conta já possui esse nome de usuário!</h4>
                                        <hr class="divider">
                                        <a class="btn btn-primary btn-xl" href="Login">Fazer Login!</a>
                                    </div>
                                </div>
                            </div>
                            
                            <div>
                                <div class="text-center mb-3">
                                    <div id="cadastro_error" class="fw-bolder" style="color: red; display: none;">
                                        <hr class="divider">
                                        <h4>Não foi possível fazer o cadastrado!</h4>
                                        <h4>Provalvemente há um problema <br>com nossos servidores.</h4>
                                        <h4>Por favor, tente novamente mais tarte!</h4>
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
                            <div class="d-grid"><button class="btn btn-primary btn-xl disabled" id="submitButton" onclick="submitForm();">Enviar</button></div>
                            <script>
                                const submitForm = () => document.getElementById("contactForm").submit();
                                const cadastroFlow = props =>  {
                                    document.getElementById('submitButton')
                                        .style.display = 'none';
                                    let id = "";
                                    switch(props) {
                                        case 200:
                                            id = 'cadastro_ok';
                                            break;
                                        case 400:
                                            id = 'cadastro_presente';
                                            break;
                                        case 500:
                                            id = 'cadastro_error';
                                            break;
                                    }
                                    document.getElementById(id)
                                        .style.display = 'block'; 
                                };
                            </script>
                            <%
                                String[] dados = {
                                    request.getParameter("usuario"),
                                    request.getParameter("email"),
                                    request.getParameter("senha")
                                };
                                
                                boolean isNull = false;
                                for(String dado : dados)
                                    if(dado == null || dado.isEmpty())
                                        isNull = true;
                                if (!isNull)
                                    out.println(
                                            "<script>cadastroFlow(" + 
                                            Controle.controle(dados, "INSERT_USER") 
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