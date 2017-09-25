package usuario;
import java.util.ArrayList;
public class Cliente {
    private String nome;
    private String cpf;
    private String rg;
    private String email;
    private String tel;
    private String ender;
    public static ArrayList<Cliente> list;
    public static ArrayList<Cliente> getList(){
        if(list==null){
        list = new ArrayList<>();
        }
    return list;
}

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEnder() {
        return ender;
    }

    public void setEnder(String ender) {
        this.ender = ender;
    }
    
    
}
