using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibraryADS2022;


using System.Net.Mail;  //biblioteca de email

namespace Projeto4
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            //1 validar os dados digitados

            string mensagem = Mensagem.Text.Trim(); // trim remove os espaços em branco
            string nome = Nome.Text.Trim();
            string email = Email.Text.Trim();



            try
            {
                if (mensagem == "" || nome == "" || email == "")
                {
                    Msg.Text = "Necessario todos campos serem preenchidos";
                }
                else
                {
                    // 2. criar o pacote email
                    MailMessage mail = new MailMessage();  // instancia da classe MailMessage

                    mail.To.Add("contato@seudominio.com"); // quem recebe o email
                    mail.Subject = "Email enviado pelo formulario de contato";

                    MailAddress from = new MailAddress("contato@seudominio.com"); // quem ta enviando

                    mail.From = from;

                    mail.Body = "Mensagem:" + mensagem + "\n";
                    mail.Body += "Nome:" + nome + "\n";
                    mail.Body += "E-mail:" + email + "\n";

                    mail.IsBodyHtml = false;

                    //3. Envia o email
                    //criar uma instancia da classe SmtpClient
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smpt.seudominio.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com", "suaSenha");
                    smtp.Send(mail);

                    //limpar memoria
                    mail.Dispose();
                    smtp.Dispose();

                }
            }
            catch (Exception ex)
            {
                Msg.Text = ex.Message;

                TratamentoExcecao exx = new TratamentoExcecao();
                exx.FileName = "~/log.txt";
                exx.SaveException(ex);



            }
           



            }

        }
    }
