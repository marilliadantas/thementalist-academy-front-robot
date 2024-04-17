*** Variables ***
${BUTTON_CADASTRO}     (//div[contains(.,'Cadastros')])[2]
${NEW_CADASTRO}        id=Novo Cadastro
${NAME_COMPLETO}       //label[@for='fullName'][contains(.,'Nome Completo*')]
${BUTTON_CADASTRAR}    //button[@type='submit'][contains(.,'SALVAR NOVO')]
${FULLNAME}            //input[contains(@name,'fullName')]           
${MAIL_CADASTRO}                //input[contains(@name,'mail')]               
${ACESSPROFILE}        //input[contains(@name,'accessProfile')]      
${CPF}                 //input[contains(@name,'cpf')]                
${PASSWORD_CADASTRO}            //input[contains(@name,'password')]           
${CONFIRMPASSWORD}     //input[contains(@name,'confirmPassword')]