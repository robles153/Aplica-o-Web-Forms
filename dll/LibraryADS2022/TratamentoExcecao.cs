using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace LibraryADS2022
{
    /// <summary>
    /// Esta classe faz o tratamento das excessões e salva no arquivo de log Excessao.txt
    /// </summary>

    public class TratamentoExcecao
    {


        /// <summary>
        /// Obtem ou define o nome do arquivo de log de excecoes
        /// 
        /// </summary>
        public string FileName
        {
            get
            {
                return m_fileName;
            }
            set
            {
                m_fileName = value;
            }
        }


        //global somente para estudos
        static string m_fileName = "~/log.txt";
        





        // convertendo caminho logico em fisico
        string caminhoFisico = System.Web.HttpContext.Current.Server.MapPath(m_fileName);
        /// <summary>
        /// Salva a excessao 
        /// </summary>
        /// <param name="ex"></param>
        public void SaveException(Exception ex)
        {
            string conteudo = "Data: " + DateTime.Now.ToString() + "\n";
            conteudo += "Mensagem:" + ex + "\n";
            conteudo += ex.StackTrace + "\n";
            conteudo += "Local salvo:" + caminhoFisico + "\n";
            conteudo += "---------------------------------------\n";

            //system.IO manipula arquivos dentro do sistema
            System.IO.File.AppendAllText(caminhoFisico, conteudo);

        }



        /// <summary>
        /// Recupera todas as ocorrencias no arquivo excessao.txt
        /// </summary>
        /// <returns></returns>
        public string LoadException()
        {
           
          
            if(System.IO.File.Exists(caminhoFisico))
            {
                return System.IO.File.ReadAllText(caminhoFisico);
            }
            else
            {
                return "";
            }
           
          
        }


        /// <summary>
        /// Deleta o arquivo de excessoes.txt
        /// </summary>
        public void DeleteException()
        {
            if (System.IO.File.Exists(caminhoFisico))
            {
                System.IO.File.Delete(caminhoFisico); // deleta o arquivo
            }
           
        }

        /// <summary>
        /// Limpa todo o arquivo de excessão
        /// </summary>
        public void ClearException()
        {
            if (System.IO.File.Exists(caminhoFisico))
            {
                System.IO.File.WriteAllText(caminhoFisico,""); // limpa todo arquivo
            }

        }



    }
}
