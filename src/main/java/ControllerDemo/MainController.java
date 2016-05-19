package ControllerDemo;




import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import model.LoginDetails;
import model.Question;
import model.UserAnswer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import JDBCDao.JdbcDaoImpl;

@org.springframework.stereotype.Controller

public class MainController 
{
	@Autowired
	JdbcDaoImpl JdbcDao;

	
	@RequestMapping(value="/hello",method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute LoginDetails login)
	{
		System.out.println(""+login.getEmail());
	    JdbcDao.register(login);
	    
		return new ModelAndView("success","message","Successfully");
	}
	@RequestMapping(value="/hello1",method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute LoginDetails login,HttpSession session)
	{
		
		String name=JdbcDao.getUserName(login);
		System.out.println(name);
		session.setAttribute("name", name);
			
			return new ModelAndView(JdbcDao.login(login),"email",login.getEmail());
		
		
	}
	@RequestMapping(value="question",method=RequestMethod.POST)
	public ModelAndView question()
	{
		
		List<Question> ls=JdbcDao.getQuestions();
		Collections.shuffle(ls);
		
		
		return new ModelAndView("displayquestion","list",ls);
		
	}
	@RequestMapping(value="question1",method=RequestMethod.POST)
	public ModelAndView question1(UserAnswer obj)
	{
		     JdbcDao.insertAnswer(obj);
	         int current_score=JdbcDao.getChecked(obj);
	         
	       //  JdbcDao.updateScore(current_score);
		     JdbcDao.updateScore(current_score,obj);
		
		return new ModelAndView("displayquestion","list1","hello");
		
	}
	@RequestMapping(value="/hello2",method=RequestMethod.GET)
	public ModelAndView ques(UserAnswer obj)
	{
		    		
		return new ModelAndView("addques","list1","hello");
		
	}


	@RequestMapping(value="/addQuestion",method=RequestMethod.POST)
	public ModelAndView addStudent(@ModelAttribute Question ques)
	{
		JdbcDao.addQues(ques);
		return new ModelAndView("success1","message","Successfully");
	}
	@RequestMapping(value="/quiz",method=RequestMethod.GET)
	public ModelAndView ques3()
	{
	    
		//int score=JdbcDao.getScore(email);
		return new ModelAndView("final");
		
	}
		
	
		@RequestMapping(value ="/logout",method = RequestMethod.GET)
		public ModelAndView logOut(HttpSession session) {
			session.invalidate();
			return new ModelAndView("index","message","Successfully");
		}
		
		@RequestMapping(value ="/edit",method = RequestMethod.GET)
		public ModelAndView edit(HttpSession session) {
			
			return new ModelAndView("editprofile");
		}
		@RequestMapping(value="/hello1",method=RequestMethod.GET)
		public ModelAndView login2(@ModelAttribute LoginDetails login,HttpSession session)
		{
			
							
				return new ModelAndView("home","email",login.getEmail());
			
			
		}
		@RequestMapping(value="goback",method=RequestMethod.POST)
		public ModelAndView question1()
		{
			
			return new ModelAndView("home");
			
		}
		
}
