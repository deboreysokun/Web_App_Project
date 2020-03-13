
import java.sql.Connection;

public class Student {
    //private variables
    private int id;
    private String firstName;
    
    //Zero arguments constructors
    public Student(){}
    public Student(int id, String firstName){
        this.id = id;
        this.firstName = firstName;
    }
    
    //Getter and Setter methods
    public int getId(){return id;}
    public String getFirstName(){return firstName;}
    
    public void setId (int id){ this.id=id;}
    public void setFirstName(String firstName){this.firstName=firstName;}
    
}
