package JDBCDao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.JDBCType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.sql.DataSource;

import model.LoginDetails;
import model.Question;
import model.UserAnswer;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.bind.annotation.RequestMapping;



public class JdbcDaoImpl implements JdbcDao{
	
	private DataSource dataSource;
	public DataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate=new JdbcTemplate(dataSource);
	}


	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}


	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}


	private JdbcTemplate jdbcTemplate;
	public void register(LoginDetails login)
	{
		System.out.println(""+login.getEmail()+login.getName()+login.getPassword());
		String sql="insert into login_details (name,email,password) values(?,?,?)";
		jdbcTemplate.update(sql,new Object[]{login.getName(),login.getEmail(),login.getPassword()});
	}
	public String login(LoginDetails login)
	{
		String sql="select password from login_details where email=?";
		try
		{
		String result=jdbcTemplate.queryForObject(sql,new Object[]{login.getEmail()}, String.class);
		if(result.equals(login.getPassword()))
		{
			String sql1="select category from login_details where email=?";
			String result1=jdbcTemplate.queryForObject(sql1,new Object[]{login.getEmail()}, String.class);
			System.out.println(result1);
			if(result1.equals("user"))
				return "home";
			else
				return "addques";
		}
		else
			return "error";
		}
		catch(Exception e)
		{
			return "error";
			
		}
		
		
	}
	
	public List<Question> getQuestions()
	{
		String sql="select * from Question ";
		List<Question> ls=jdbcTemplate.query(sql,  new QuestionMapper());
		return ls;
		
	}
	private static final class QuestionMapper implements RowMapper<Question>
	{

		public Question mapRow(ResultSet arg0, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			Question ques=	new Question();
			ques.setEmail(arg0.getString(1));
			ques.setQid(arg0.getInt(2));
			ques.setQuestion(arg0.getString(3));
			ques.setOption1(arg0.getString(4));
			ques.setOption2(arg0.getString(5));
			ques.setOption3(arg0.getString(6));
			ques.setOption4(arg0.getString(7));
			ques.setCorrect_answer(arg0.getString(8));
			ques.setLevel(arg0.getString(9));
			return ques;
					}
		
		
	}
	public int getChecked(UserAnswer obj)
	{
		
		String query="select correctans from question where qid=?";

		String ans=jdbcTemplate.queryForObject(query,new Object[]{obj.getQid()}, String.class);
		ans=ans.trim();
		obj.setAnswer(obj.getAnswer().trim());
		if(ans.equals(obj.getAnswer()))
		{
			return 1;
			
		}
		else
			return 0;
	}
	public void insertAnswer(UserAnswer obj)
	{
		String sql="insert into useranswer (email,qid,answer) values(?,?,?)";
		jdbcTemplate.update(sql,new Object[]{obj.getEmail(),obj.getQid(),obj.getAnswer()});
		
	}
	public void updateScore(int score,UserAnswer obj)
	{
		String query="select score from login_details where email=?";
		int prev_score=jdbcTemplate.queryForObject(query, new Object[]{obj.getEmail()},Integer.class);
		String query1="select level from question where qid=?";
		String level=jdbcTemplate.queryForObject(query1, new Object[]{obj.getQid()},String.class);
		score=score+(prev_score*(Integer.parseInt(level)));
	  String sql="update login_details set score=? where email=?";
	  jdbcTemplate.update(sql,new Object[]{score,obj.getEmail()});
	}
	public void addQues(Question ques)
	{
	
		String sql="insert into question(email,question,option1,option2,option3,option4,correctans,level) values(?,?,?,?,?,?,?,?)";
	
		this.jdbcTemplate.update(sql, "abc@mmag.com",ques.getQuestion(),ques.getOption1(),ques.getOption2(),ques.getOption3(),ques.getOption4(),ques.getCorrect_answer(),ques.getLevel());

	}
	public int getScore(UserAnswer obj)
	{
		String query="select score from login_details where email=?";
		int prev_score=jdbcTemplate.queryForObject(query, new Object[]{obj.getEmail()},Integer.class);
		return prev_score;
		
	}
	public String getUserName(LoginDetails login)
	{
		String query="select name from login_details where email=?";
		String prev_score=jdbcTemplate.queryForObject(query, new Object[]{login.getEmail()},String.class);
		return prev_score;

		
	}
}
