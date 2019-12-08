package ff.controllers;
import java.util.List;  
 
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ff.dto.*;
import ff.dl.*;    

@Controller 
public class WorkerController {
	@RequestMapping("/view_works_spring")    
    public String viewworkers(Model m){    
        List<WorkerDTO> list=WorkerDL.getAllWorkers();    
        m.addAttribute("list",list);  
        return "view_works_spring";   

}
	
	@RequestMapping("/view_seekers_spring")    
    public String viewseeker(Model m){    
        List<SeekerDTO> list=SeekerDL.getAllSeekers();    
        m.addAttribute("list",list);  
        return "view_seekers_spring";   

}

	@RequestMapping("/register_successfull")    
    public String resuccessfull(Model m){    
        List<SeekerDTO> list=SeekerDL.getAllSeekers();    
        m.addAttribute("list",list);  
        return "register_successfull";   

}
	  //seeker is an object of SeekerDTO  
	
	  @RequestMapping(value="/saveSeeker",method = RequestMethod.POST)    
	    public String saveSeeker(@ModelAttribute("seeker") SeekerDTO seeker){ 
		 
	        SeekerDL.addSeekers(seeker);    //seeker is an object of SeekerDTO 
	        return "redirect:/register_successfull";//will redirect to viewemp request mapping    
	    }  
	  
	  
	  @RequestMapping("/seekerForm")    
	    public String seekerForm(Model m){    
	        m.addAttribute("command", new SeekerDTO());  
	        return "seekers_register";   
	    }    
	  
	 	  
	  /* It displays object data into form for the given id.   
	     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/editSeeker/{id}")    
	    public String edit(@PathVariable String id, Model m){    
	        SeekerDTO seeker=SeekerDL.getSeeker(id);    
	        m.addAttribute("command",seeker);  
	        return "edit";    
	    }    
	    
	    /* It updates model object. */    
	    @RequestMapping(value="/editSave",method = RequestMethod.POST)    
	    public String editsave(@ModelAttribute("seeker") SeekerDTO seeker){    
	        SeekerDL.updateSeeker(seeker);    
	        return "redirect:/view_seekers_spring";    
	    }   
	    
	    /* It deletes record for the given id in URL and redirects to /viewemp */    
	    @RequestMapping(value="/deleteSeeker/{id}",method = RequestMethod.GET)    
	    public String delete(@PathVariable String id){    
	        SeekerDL.deleteSeeker(id);    
	        return "redirect:/view_seekers_spring";    
	    }     
}

