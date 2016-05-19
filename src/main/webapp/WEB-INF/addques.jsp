<html>
<head>

<link href="../css/screen.css" rel="stylesheet" type="text/css">
<link href="../css/login.css" rel="stylesheet" type="text/css">

</head>
<div id="div1" style="background-color:black; text-align: center">
	<form action="	addQuestion.html" method="post" name="Question" id="Question">
		<center>
			<br>
			<table>
				<h2>Set Question here</h2>
				<br>
				<br>
				<tr>
					<td>Category:</td>
					<td>
						<div>
							<select name="level"  id="level" style="text-align: center; font-size: 20px">
								<option value="1">Easy</option>
								<option value="2">Medium</option>
								<option value="3">Hard</option>
								
							</select>
						</div> <br>
					</td>

				</tr>

				<tr>
					<td>Question :</td>
					<td><input type="text" style="background-color: #18BC9C"
						name="question" id="question" value="" class="detail" /> <span
						class="error"></span><span class="error" id="errormail"></span><br />
					<br /></td>
				</tr>

				<tr>
					<td>Option A:</td>
					<td><input type="text" style="background-color: #18BC9C"
						name="option1" id="option1" value="" class="detail" /> <span
						class="error"></span><span class="error" id="errormail"></span><br />
					<br /></td>
				</tr>

				<tr>
					<td>Option B:</td>
					<td><input type="text" style="background-color: #18BC9C"
						name="option2" id="option2" value="" class="detail" /> <span
						class="error"></span><span class="error" id="errormail"></span><br />
					<br /></td>
				</tr>

				<tr>
					<td>Option C:</td>
					<td><input type="text" style="background-color: #18BC9C"
						name="option3" id="option3" value="" class="detail" /> <span
						class="error"></span><span class="error" id="errormail"></span><br />
					<br /></td>
				</tr>

				<tr>
					<td>Option D:</td>
					<td><input type="text" style="background-color: #18BC9C"
						name="option4" id="option4" value="" class="detail" /> <span
						class="error"></span><span class="error" id="errormail"></span><br />
					<br /></td>
				</tr>

				<tr>
					<td>Correct Option:</td>
					<td><input type="text" style="background-color: #18BC9C"
						name="correct_answer" id="correct_answer" value="" class="detail" />
						<span class="error"></span><span class="error" id="errormail"></span><br />
					<br /></td>
				</tr>
				<tr>
					<td><input type="submit" value="submit"
						style="text-align: center; font-size: 20px"></td>
					<td><input type="reset" value="Reset"
						style="text-align: center; font-size: 20px"></td>
				</tr>
				<br>
			</table>

		</center>
	</form>
</div>


</html>
