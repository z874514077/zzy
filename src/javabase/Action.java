package javabase;

import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import javabase.DBconnection;

public class Action {
    private Pattern p = Pattern.compile("\\?");
    private List<String> list = new LinkedList<String>();
    private List<String> list0 = new LinkedList<String>();
    private List<String> list1 = new LinkedList<String>();
    private List<String> list2 = new LinkedList<String>();
    private List<String> list3 = new LinkedList<String>();
    ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
 //============================================
    private String username;
    private String password;
    private String name;
    private String age;
    private String sex;
    private String cengquguo;
    private String start;
    private String destination;
    private String date;
    private String gexingqianming;
    private String team;
//==============================================    
    private String teamname;
    private String day;
    private String end;
    private String neednum;
    private String ownnum;
    private String teammate;
    private String description;
    
    static int flag;
    private String forplace;
//==============================================
    //username
    public String getUsername(){
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    //password
    public String getPassword(){
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }    
    //name
    public String getName(){
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    //sex
    public String getSex(){
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    //age
    public String getAge(){
        return age;
    }
    public void setAge(String age) {
        this.age = age;
    }
    //start
    public String getStart(){
        return start;
    }
    public void setStart(String start) {
        this.start = start;
    }
    //destination
    public String getDestination(){
        return destination;
    }
    public void setDestination(String destination) {
        this.destination = destination;
    }
    //date
    public String getDate(){
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    //cengquguo
    public void setCengquguo(String cengquguo) {
        this.cengquguo = cengquguo;
    }
    public String getCengquguo(){
        return cengquguo;
    }
    //gexingqianming
    public void setGexingqianming(String gexingqianming) {
        this.gexingqianming = gexingqianming;
    }
    public String getGexingqianming(){
        return gexingqianming;
    }
    //team
    public void setTeam(String team) {
        this.team = team;
    }
    public String getTeam(){
        return team;
    }    
//============================================================================    
    //teamname
    public String getTeamname(){
        return teamname;
    }
    public void setTeamname(String teamname) {
        this.teamname = teamname;
    }
    //day
    public String getDay(){
        return day;
    }
    public void setDay(String day) {
        this.day = day;
    } 
    //end
    public String getEnd(){
        return end;
    }
    public void setEnd(String end) {
        this.end = end;
    }
    //teammate
    public String getTeammate(){
        return teammate;
    }
    public void setTeammate(String teammate) {
        this.teammate = teammate;
    }   
    //neednum
    public String getNeednum(){
        return neednum;
    }
    public void setNeednum(String neednum) {
        this.neednum = neednum;
    }
    //ownnum
    public String getOwnnum(){
        return ownnum;
    }
    public void setOwnnum(String ownnum) {
        this.ownnum = ownnum;
    }
    //description
    public String getDescription(){
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
//===================================================
    //forplace
    public String getForplace(){
        return forplace;
    }
    public void setForplace(String forplace) {
        this.forplace = forplace;
    } 
//==========================================================================================================
    //查询会员信息
    public String userdetail(){
        String sql0 ="select * from user where name=?";
        Matcher m1 = p.matcher(sql0);
        String sql1 = m1.replaceFirst('"'+name+'"');
        DBconnection connect = new DBconnection();
        list0=connect.select(sql1);
        session.setAttribute("list0", list0);
        if(list0.size()==0)
            return "FAILED";
        else
            return "SUCCESS";
    }
    //查询组队信息
    public String teamdetail(){
        String sql0 ="select * from team where end=?";
        Matcher m1 = p.matcher(sql0);
        String sql1 = m1.replaceFirst('"'+end+'"');
        DBconnection connect = new DBconnection();
        list=connect.select(sql1);
        session.setAttribute("list", list);
        
        //推荐队友
        String sql2 ="select * from user where destination=?";
        Matcher m2 = p.matcher(sql2);
        String sql3 = m2.replaceFirst('"'+end+'"');
        DBconnection connect2 = new DBconnection();
        list1=connect2.select(sql3);
        session.setAttribute("list1", list1);
        
        if(list.size()==0)
            return "FAILED";
        else
            return "SUCCESS";
    }
    //查询路线
    public String routedetail(){
    	if(forplace.equals("哈尔滨"))
    		return "Harbin";
    	else if(forplace.equals("丽江"))
    		return "Lijiang";
    	else if(forplace.equals("张家界"))
    		return "Zhangjiajie";
    	else if(forplace.equals("大连"))
    		return "Dalian";
    	else if(forplace.equals("敦煌"))
    		return "Dunhuang";
    	else
    		return "FAILED";
    }
    //添加成员
    public String adduser(){	
    	String sql0="select * from team where teamname=?";
        Matcher m0 = p.matcher(sql0);
        String sql1 = m0.replaceFirst('"'+teamname+'"');
        DBconnection connect = new DBconnection();
        list2=connect.select(sql1);
        ownnum = String.valueOf(Integer.parseInt(list2.get(4))+1);
        neednum = String.valueOf(Integer.parseInt(list2.get(3))-1);
        teammate = "朱梦圆";
        
        String[] sql=new String[8];
        sql[0]="update team set ownnum=?,neednum=?,teammate=? where teamname=?";
        Matcher m1 = p.matcher(sql[0]);
        sql[1] = m1.replaceFirst('"'+ownnum+'"');
        m1 = p.matcher(sql[1]);
        sql[2] = m1.replaceFirst('"'+neednum+'"');
        m1 = p.matcher(sql[2]);
        
        sql[3] = m1.replaceFirst('"'+teammate+'"');
        m1 = p.matcher(sql[3]);
        sql[4] = m1.replaceFirst('"'+teamname+'"');
        int signal=connect.update(sql[4]);
        
        sql[5]="update user set team=? where name=?";
        m1 = p.matcher(sql[5]);
        sql[6] = m1.replaceFirst('"'+teamname+'"');
        m1 = p.matcher(sql[6]);  
        sql[7] = m1.replaceFirst('"'+"朱梦圆"+'"');
       
        signal=connect.update(sql[7]);
        if(signal==1)
            return "SUCCESS";
        else
            return "FAILED";
    }
    //创建组队
    public String addteam(){
    	String[] sql=new String[8];
        sql[0]="insert into team(teamname,day,end,neednum,ownnum,teammate,description) values(?,?,?,?,?,?,?)";
        Matcher m1 = p.matcher(sql[0]);
        sql[1] = m1.replaceFirst('"'+teamname+'"');
        m1 = p.matcher(sql[1]);
        sql[2] = m1.replaceFirst('"'+day+'"');
        m1 = p.matcher(sql[2]);
        sql[3] = m1.replaceFirst('"'+end+'"');
        m1 = p.matcher(sql[3]);
        sql[4] = m1.replaceFirst('"'+neednum+'"');
        m1 = p.matcher(sql[4]);
        sql[5] = m1.replaceFirst('"'+ownnum+'"');
        m1 = p.matcher(sql[5]);
        sql[6] = m1.replaceFirst('"'+teammate+'"');
        m1 = p.matcher(sql[6]);
        sql[7] = m1.replaceFirst('"'+description+'"');
        
        DBconnection connect = new DBconnection();
        int signal=connect.insert(sql[7]);
        if(signal==1)
            return "SUCCESS";
        else
            return "FAILED";
    }
    
  //完善用户信息
    public String adduserdetail(){
    	String[] sql=new String[12]; 
        sql[0]="insert into user(username,password,name,age,sex,cengquguo,start,destination,date,gexingqianming,team) values(?,?,?,?,?,?,?,?,?,?,?)";
        Matcher m1 = p.matcher(sql[0]);
        sql[1] = m1.replaceFirst('"'+username+'"');
        m1 = p.matcher(sql[1]);
        sql[2] = m1.replaceFirst('"'+password+'"');
        m1 = p.matcher(sql[2]);
        sql[3] = m1.replaceFirst('"'+name+'"');
        m1 = p.matcher(sql[3]);
        sql[4] = m1.replaceFirst('"'+age+'"');
        m1 = p.matcher(sql[4]);
        sql[5] = m1.replaceFirst('"'+sex+'"');
        m1 = p.matcher(sql[5]);
        sql[6] = m1.replaceFirst('"'+cengquguo+'"');
        m1 = p.matcher(sql[6]);
        sql[7] = m1.replaceFirst('"'+start+'"');
        m1 = p.matcher(sql[7]);
        sql[8] = m1.replaceFirst('"'+destination+'"');      
        m1 = p.matcher(sql[8]);
        sql[9] = m1.replaceFirst('"'+date+'"');    
        m1 = p.matcher(sql[9]);
        sql[10] = m1.replaceFirst('"'+gexingqianming+'"'); 
        m1 = p.matcher(sql[10]);
        sql[11] = m1.replaceFirst('"'+team+'"');
        DBconnection connect = new DBconnection();
        int signal=connect.insert(sql[11]);
        if(signal==1)
            return "SUCCESS";
        else
            return "FAILED";
    }
}

