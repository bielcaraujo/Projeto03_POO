package usuario;
import java.util.ArrayList;
public class Fornecedor {
    private String nome;
    private String razao;
    private String cnpj;
    private String email;
    private String tel;
    private String ender;
    public static ArrayList<Fornecedor> list;
    public static ArrayList<Fornecedor> getList(){
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

    public String getRazao() {
        return razao;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
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
