package javabase;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

public class Action {
    private Pattern p = Pattern.compile("\\?");
    private List<String> list = new LinkedList<String>();
    private List<String> list0 = new LinkedList<String>();
    private List<String> list1 = new LinkedList<String>();
    ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
    
    private String name;
    private String sex;
    private String age;
    private String start;
    private String end;
    private String date;
    private String places;
    
    private String teamname;
    private String place;
    private String teamdate;
    private String day;
    private String neednum;
    private String ownnum;
    private String description;
    
    static int flag;
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
    //end
    public String getEnd(){
        return end;
    }
    public void setEnd(String end) {
        this.end = end;
    }
    //date
    public String getDate(){
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    //places
    public void setPlaces(String places) {
        this.places = places;
    }
    public String getPlaces(){
        return places;
    }
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
    //teamdate
    public String getTeamdate(){
        return teamdate;
    }
    public void setTeamdate(String teamdate) {
        this.teamdate = teamdate;
    }   
    //place
    public String getPlace(){
        return place;
    }
    public void setPlace(String place) {
        this.place = place;
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
    
    private String forplace;
    public String getForplace(){
        return forplace;
    }
    public void setForplace(String forplace) {
        this.forplace = forplace;
    }
    
    
    
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
        String sql0 ="select * from team where place=?";
        Matcher m1 = p.matcher(sql0);
        String sql1 = m1.replaceFirst('"'+place+'"');
        DBconnection connect = new DBconnection();
        list=connect.select(sql1);
        session.setAttribute("list", list);
        
        //推荐队友
        String sql2 ="select * from user where end=?";
        Matcher m2 = p.matcher(sql2);
        String sql3 = m2.replaceFirst('"'+place+'"');
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
    		return "haerbin";
    	else if(forplace.equals("丽江"))
    		return "lijiang";
    	else if(forplace.equals("张家界"))
    		return "zhangjiajie";
    	else if(forplace.equals("大连"))
    		return "dalian";
    	else
    		return "FAILED";
    }
    //创建组队
    public String adduser(){
        String[] sql=new String[8];
        sql[0]="insert into user(name,sex,age,start,end,date,places) values(?,?,?,?,?,?,?)";
        Matcher m1 = p.matcher(sql[0]);
        sql[1] = m1.replaceFirst('"'+name+'"');
        m1 = p.matcher(sql[1]);
        sql[2] = m1.replaceFirst('"'+sex+'"');
        m1 = p.matcher(sql[2]);
        sql[3] = m1.replaceFirst('"'+age+'"');
        m1 = p.matcher(sql[3]);
        sql[4] = m1.replaceFirst('"'+start+'"');
        m1 = p.matcher(sql[4]);
        sql[5] = m1.replaceFirst('"'+end+'"');
        m1 = p.matcher(sql[5]);
        sql[6] = m1.replaceFirst('"'+date+'"');
        m1 = p.matcher(sql[6]);
        sql[7] = m1.replaceFirst('"'+places+'"');
        
        DBconnection connect = new DBconnection();
        int signal=connect.insert(sql[7]);
        if(signal==1)
            return "SUCCESS";
        else
            return "FAILED";
    }

    public String addteam(){
    	String[] sql=new String[8];
        sql[0]="insert into team(teamname,place,teamdate,day,neednum,ownnum,description) values(?,?,?,?,?,?,?)";
        Matcher m1 = p.matcher(sql[0]);
        sql[1] = m1.replaceFirst('"'+teamname+'"');
        m1 = p.matcher(sql[1]);
        sql[2] = m1.replaceFirst('"'+place+'"');
        m1 = p.matcher(sql[2]);
        sql[3] = m1.replaceFirst('"'+teamdate+'"');
        m1 = p.matcher(sql[3]);
        sql[4] = m1.replaceFirst('"'+day+'"');
        m1 = p.matcher(sql[4]);
        sql[5] = m1.replaceFirst('"'+neednum+'"');
        m1 = p.matcher(sql[5]);
        sql[6] = m1.replaceFirst('"'+ownnum+'"');
        m1 = p.matcher(sql[6]);
        sql[7] = m1.replaceFirst('"'+description+'"');
        
        DBconnection connect = new DBconnection();
        int signal=connect.insert(sql[7]);
        if(signal==1)
            return "SUCCESS";
        else
            return "FAILED";
    }
}
