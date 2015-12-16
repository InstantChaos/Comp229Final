using System;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


/// <summary>
/// Class contains miscellaneous functionality 
/// </summary>
public static class Utilities
{
	static Utilities()
	{
		//
		// TODO: Add constructor logic here
		//
	}

  // Generic method for sending emails
  public static void SendMail(string from, string to, string subject, string body)
  {
    // Configure mail client (may need additional
    // code for authenticated SMTP servers)
    SmtpClient mailClient = new SmtpClient(BalloonShopConfiguration.MailServer);
    // Create the mail message
    MailMessage mailMessage = new MailMessage(from, to, subject, body);
    /*
       // For SMTP servers that require authentication
       message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1);
       message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "SmtpHostUserName");
       message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "SmtpHostPassword");
      */
    // Send mail
    mailClient.Send(mailMessage); 
  }

  // Send error log mail
  public static void LogError(Exception ex)
  {
    // get the current date and time
    string dateTime = DateTime.Now.ToLongDateString() + ", at "
                    + DateTime.Now.ToShortTimeString();
    // stores the error message
    string errorMessage = "Exception generated on " + dateTime;
    // obtain the page that generated the error
    System.Web.HttpContext context = System.Web.HttpContext.Current;
    errorMessage += "\n\n Page location: " + context.Request.RawUrl; 
    // build the error message
    errorMessage += "\n\n Message: " + ex.Message; 
    errorMessage += "\n\n Source: " + ex.Source;
    errorMessage += "\n\n Method: " + ex.TargetSite; 
    errorMessage += "\n\n Stack Trace: \n\n" + ex.StackTrace; 
    // send error email in case the option is activated in Web.Config
    if (BalloonShopConfiguration.EnableErrorLogEmail)
    {
      string from = "noreply@cristiandarie.ro";
      string to = BalloonShopConfiguration.ErrorLogEmail;
      string subject = BalloonShopConfiguration.SiteName + " error report";
      string body = errorMessage;
      SendMail(from, to, subject, body);      
    }
  }

  // Configures what button to be clicked when the uses presses Enter in a 
  // textbox. The text box doesn't have to be a TextBox control, but it must 
  // be derived from either HtmlControl or WebControl, and the HTML control it 
  // generates should accept an 'onkeydown' attribute. The HTML generated by 
  // the button must support the 'Click' event
  public static void TieButton(Page page, Control TextBoxToTie, Control ButtonToTie)
  {
    // Init jscript
    string jsString = "";

    // Check button type and get required jscript
    if (ButtonToTie is LinkButton)
    {
      jsString = "if ((event.which && event.which == 13) || (event.keyCode && event.keyCode == 13)) {"
          + page.ClientScript.GetPostBackEventReference(ButtonToTie, "").Replace(":", "$") + ";return false;} else return true;";
    }
    else if (ButtonToTie is ImageButton)
    {
      jsString = "if ((event.which && event.which == 13) || (event.keyCode && event.keyCode == 13)) {"
          + page.ClientScript.GetPostBackEventReference(ButtonToTie, "").Replace(":", "$") + ";return false;} else return true;";
    }
    else
    {
      jsString = "if ((event.which && event.which == 13) || (event.keyCode && event.keyCode == 13)) {document."
          + "forms[0].elements['" + ButtonToTie.UniqueID.Replace(":", "_") + "'].click();return false;} else return true; ";
    }

    // Attach jscript to the onkeydown attribute - we have to cater for HtmlControl or WebControl
    if (TextBoxToTie is HtmlControl)
    {
      ((HtmlControl)TextBoxToTie).Attributes.Add("onkeydown", jsString);
    }
    else if (TextBoxToTie is WebControl)
    {
      ((WebControl)TextBoxToTie).Attributes.Add("onkeydown", jsString);
    }
  }
}
