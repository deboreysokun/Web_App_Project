
import com.sun.xml.ws.tx.at.v10.types.PrepareResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DatabaseOperation {
    Connection con = null;
    public Connection getCon() throws ClassNotFoundException, SQLException{
        if (con==null){
        Class.forName("com.mySQL.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
        }
        return con;
    }
    //InsertRecord Operation
    public boolean insertRecord(Student s) throws SQLException{
        PreparedStatement ps = con.prepareStatement("insert into Student values(?,?)");
        ps.setInt(1, s.getId());
        ps.setString(2, s.getFirstName());
        ps.execute();
        return true;          
    }
    public Student getSingleRecord(int Id) {
        //"s" the DTO (data transfer object)
        Student s = new Student();
        try {
            con = getCon();
            PreparedStatement ps = con.prepareStatement("Select * from Student where id = ?");
            ps.setInt(1, Id);
            
            ResultSet rs = ps.executeQuery();
            
            //Getting the data from the database and store in the temporary variable
            int snoTemp = rs.getInt(1);
            String firstNameTemp = rs.getString(2);
            
            //Store the temporary data to the new DTO
            s.setId(snoTemp);
            s.setFirstName(firstNameTemp);
            

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }  
}
