package JDBCDao;

import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import model.LoginDetails;
import model.Question;
import model.UserAnswer;

public interface JdbcDao {
	public void register(LoginDetails login);
	public String login(LoginDetails login);
	public List<Question> getQuestions();
	//private static final class QuestionMapper implements RowMapper<Question>;
	public int getChecked(UserAnswer obj);
	public void insertAnswer(UserAnswer obj);
	public void updateScore(int score,UserAnswer obj);
	public void addQues(Question ques);
	public int getScore(UserAnswer obj);
	public String getUserName(LoginDetails login);


}
