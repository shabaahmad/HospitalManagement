package mypackage;
import java.sql.*;
public class DataBaseClass
{
    private Connection comm;
    
    public DataBaseClass()throws ClassNotFoundException , SQLException
    {
        establishConnection();
    }
    private void establishConnection()throws ClassNotFoundException , SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        comm=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
    }
    
    public boolean loginValidateAdmin(String adminname ,String password)throws SQLException
    {
        boolean status=false;
        String str="select * from admin where adminname=? and password=?";
        PreparedStatement pstm=comm.prepareStatement(str);
        pstm.setString(1, adminname);
        pstm.setString(2, password);
        
        ResultSet rs=pstm.executeQuery();
        int i=0;
        while(rs.next())
        {
            i++;
        }
        if(i==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    public void addDoctor(String doctorname,String specialization,String contact)
    {
        try
        {
            String str="insert into doctor(doctorname,specialization,contact) values(?,?,?)";
            PreparedStatement pstm=comm.prepareStatement(str);
            pstm.setString(1, doctorname);
            pstm.setString(2, specialization);
            pstm.setString(3, contact);
            pstm.executeUpdate(); 
        }
        catch(SQLException ex)
        {
             ex.getMessage();
        }
    }
    
    public ResultSet viewDoctor()
    {
        ResultSet rs=null;
         try
        {
           PreparedStatement pstm=comm.prepareStatement("select * from doctor");
         
           rs= pstm.executeQuery(); 
        }
        catch(SQLException ex)
        {
             ex.getMessage();
        }
        return rs;
    }
    
    public void deleteDoctor(String id)
    {
        try
        {
          String str="delete from doctor where doctorid=?";
          PreparedStatement pstm=comm.prepareStatement(str);
          pstm.setString(1, id);
          pstm.executeUpdate();
        }
        catch(SQLException ex)
        {
            ex.getMessage();
        }
    }
    
    
     public void addPatient(String patientname,String patientaddress,String gender,String contact)
    {
        try
        {
            String str="insert into patient(patientname,patientaddress,gender,contact) values(?,?,?,?)";
            PreparedStatement pstm=comm.prepareStatement(str);
            pstm.setString(1, patientname);
            pstm.setString(2, patientaddress);
             pstm.setString(3, gender);
            pstm.setString(4, contact);
            pstm.executeUpdate(); 
        }
        catch(SQLException ex)
        {
             ex.getMessage();
        }
    }
     
     public ResultSet viewPatient()
    {
        ResultSet rs=null;
         try
        {
           PreparedStatement pstm=comm.prepareStatement("select * from patient");
         
           rs= pstm.executeQuery(); 
        }
        catch(SQLException ex)
        {
             ex.getMessage();
        }
        return rs;
    }
      
      public void deletePatient(String id)
    {
        try
        {
          String str="delete from patient where patientid=?";
          PreparedStatement pstm=comm.prepareStatement(str);
          pstm.setString(1, id);
          pstm.executeUpdate();
        }
        catch(SQLException ex)
        {
            ex.getMessage();
        }
    }
      
      
    public void addAppointment(String doctor,String patient,String date,String time)
    {
        try
        {
            String str="insert into appointment(doctor,patient,date,time) values(?,?,?,?)";
            PreparedStatement pstm=comm.prepareStatement(str);
            pstm.setString(1, doctor);
            pstm.setString(2, patient);
            pstm.setString(3, date);
            pstm.setString(4, time);
            pstm.executeUpdate(); 
        }
        catch(SQLException ex)
        {
             ex.getMessage();
        }
    }  
    
     public ResultSet viewAppointment()
    {
        ResultSet rs=null;
         try
        {
           PreparedStatement pstm=comm.prepareStatement("select * from appointment");
         
           rs= pstm.executeQuery(); 
        }
        catch(SQLException ex)
        {
             ex.getMessage();
        }
        return rs;
    }
      
      public void deleteAppointment(String id)
    {
        try
        {
          String str="delete from appointment where appointid=?";
          PreparedStatement pstm=comm.prepareStatement(str);
          pstm.setString(1, id);
          pstm.executeUpdate();
        }
        catch(SQLException ex)
        {
            ex.getMessage();
        }
    }
}
