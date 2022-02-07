usethis::create_package("portfolioPedro") #não utilize "_" ou outros símbolos no nome

usethis::use_git_config(
  user.name = "pedrolima01",
  user.email = "pedro.jf@outlook.com.br"
) #dados do seu github

usethis::create_github_token() #abre para criar o token

gitcreds::gitcreds_set() #abre para digitar o token

usethis::use_git() #após comando, digite 2 no console
#apos comando digite o número para aceitar reiniciar o RStudio, vai habilitar a aba Git

usethis::use_github()
#nas opções que abrir escolha a opção para commitar

usethis::use_github_pages("main", "/docs") #main é o nome do brach no Git e / docs será o nome da pasta criada no github/settings/pages

file.create(".nojekyll")

list.files(all.files = TRUE)#Só para verificar se criou

distill::create_blog(".", "Portfolio do Pedro", gh_pages = TRUE) #nao pode ter acento no nome, gh_pages é para criar uma pasta e enviar tudo nela, aqui foi criada a pasta docs



