public class ctrlFormBuild {

    public ctrlFormBuild(ApexPages.StandardController controller) {

    }


  public String varForm { get; set; }

    public PageReference save() {
    
      if(varForm != null)
      {
          Forms__c frm = new Forms__c(Name = varForm);
          insert frm;
      }    
       
         
       
       
      
    
        return null;
    }


  
    
    public ctrlFormBuild()
    {
        
    }
    
    
    
}