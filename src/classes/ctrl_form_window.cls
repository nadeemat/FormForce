public with sharing class ctrl_form_window {

   public static List<Markup__c> markUp = new List<Markup__c>();
   Public static string ret {get;set;}
     
   public ctrl_form_window(){
       getHtmlMarkup();
   }

    @RemoteAction
    public static string getHtmlMarkup(){
    
        markUp = [select id, Name , position__c , Markup_text__c from Markup__c order by position__c];
        
         ret = '';
        for(Markup__c val : markUp ){
            
           ret = ret + '<br/>' + val.Markup_text__c  ;
        }
        
        return ret; 
    }

}