using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text.RegularExpressions;

namespace CommunityApp.Common.Utility
{
    public class MailClient
    {
        #region Public Methods

        public void SendMail(string[] to, string[] ccEmail, string subject, string body, List<System.Net.Mail.Attachment> attachedment)
        {
            string strTo = "";
            string strCc = "";

            if (to != null)
            {
                foreach (var t in to)
                {
                    if (string.IsNullOrEmpty(strTo))
                        strTo = t.ToString();
                    else
                        strTo += ";" + t.ToString();
                }
            }

            if (ccEmail != null)
            {
                foreach (var c in ccEmail)
                {
                    if (string.IsNullOrEmpty(strCc))
                        strCc = c.ToString();
                    else
                        strCc += ";" + c.ToString();
                }
            }

            SendMail(System.Configuration.ConfigurationManager.AppSettings["EmailFrom"],
                                                  strTo.ToString(), strCc.ToString(), null, subject, body, attachedment, true);
        }

        /// <summary>
        /// call this Method to send an Email with attachments
        /// </summary>
        /// <param name="emailFrom">From EmailID</param>
        /// <param name="emailTo">To Email ID</param>
        /// <param name="emailCC">CC Email ID</param>
        /// <param name="emailBCC">BCC Email ID</param>
        /// <param name="subject">Subject</param>
        /// <param name="body">Body</param>
        /// <param name="IsBodyHtml">EmailBodyFormat(Default It is false, If It is true EmailBody should in HTML Format)</param>
        /// <param name="attachmentPath">Attachment File Path</param>
        /// <returns>If sends successfully returns True otherwise False</returns>
        public void SendMail(string emailFrom,
        string emailTo,
        string emailCC,
        string emailBCC,
        string subject,
        string body,
        System.Collections.Generic.List<Attachment> attachments,
        bool IsBodyHtml)
        {
            string errorMessage = string.Empty;

            try
            {
                bool ValidateFromEmailAddress = ValidateEmailAddress(emailFrom);

                if (ValidateFromEmailAddress == false)
                    errorMessage += "Invalid From Email Address: " + emailFrom + "\n";
                bool ValidateToEmailAddress = ValidateEmailAddress(emailTo);
                if (ValidateToEmailAddress == false)
                    errorMessage += "Invalid To Email Address: " + emailTo + "\n";

                MailAddress mailFrom = new MailAddress(emailFrom);
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = mailFrom;

                if (emailTo.Contains(";"))
                {
                    string[] toSplit = emailTo.Split(';');

                    foreach (var to in toSplit)
                    {
                        MailAddress mailTo = new MailAddress(to);
                        mailMessage.To.Add(mailTo);
                    }
                }
                else
                {
                    MailAddress mailTo = new MailAddress(emailTo);
                    mailMessage.To.Add(mailTo);
                }


                mailMessage.Subject = subject;
                mailMessage.Body = body;
                mailMessage.IsBodyHtml = IsBodyHtml;
                if (!String.IsNullOrEmpty(emailCC))
                {
                    bool ValidateCCEmailAddress = ValidateEmailAddress(emailCC);
                    if (ValidateCCEmailAddress == false)
                        errorMessage += "Invalid CC Email Address: " + emailCC + "\n";

                    string[] ccSplit = emailCC.Split(';');
                    foreach (var cc in ccSplit)
                    {
                        MailAddress mailCC = new MailAddress(cc);
                        mailMessage.CC.Add(mailCC);
                    }

                }
                if (!String.IsNullOrEmpty(emailBCC))
                {
                    bool ValidateBCCEmailAddress = ValidateEmailAddress(emailBCC);
                    if (ValidateBCCEmailAddress == false)
                        errorMessage += "Invalid BCC Email Address: " + emailBCC + "\n";
                    mailMessage.Bcc.Add(emailBCC);
                }

                if (attachments != null)
                {
                    foreach (var att in attachments)
                        mailMessage.Attachments.Add(att);
                }
                String strSMTPServer = System.Configuration.ConfigurationManager.AppSettings["SMTPServer"];
                SmtpClient smtpClient = new SmtpClient(strSMTPServer);

                if (!string.IsNullOrEmpty(System.Configuration.ConfigurationManager.AppSettings["SMTPUserName"]) &&
                    !string.IsNullOrEmpty(System.Configuration.ConfigurationManager.AppSettings["SMTPPassword"]))
                    smtpClient.Credentials = new System.Net.NetworkCredential(System.Configuration.ConfigurationManager.AppSettings["SMTPUserName"].ToString(), System.Configuration.ConfigurationManager.AppSettings["SMTPPassword"].ToString());

                if (mailMessage != null)
                {
                    smtpClient.Send(mailMessage);
                    mailMessage.Dispose();
                }

            }
            catch (Exception exception)
            {
                throw exception;
            }
        }
        /// <summary>
        /// check email address is valid or not 
        /// </summary>
        /// <param name="emailAddress">email address to validate</param>
        /// <returns>True if email address is valid</returns>
        public bool ValidateEmailAddress(string emailAddress)
        {
            try
            {
                string TextToValidate = emailAddress;
                Regex expression = new Regex(@"\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}");

                if (expression.IsMatch(TextToValidate))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        #endregion
    }
}
