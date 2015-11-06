/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author marcelosiedler
 */
@Entity
@Table(name = "disciplina")
@NamedQueries({
    @NamedQuery(name = "Disciplina.findAll", query = "SELECT d FROM Disciplina d")})
public class Disciplina implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    @Column(name = "nome")
    private String nome;
    @Column(name = "semestre")
    private Integer semestre;
    @JoinColumn(name = "codigocurso", referencedColumnName = "codigo")
    @ManyToOne
    private Curso codigocurso;
    @JoinColumn(name = "siapeprofessor", referencedColumnName = "siape")
    @ManyToOne
    private Professor siapeprofessor;

    public Disciplina() {
    }

    public Disciplina(Integer codigo) {
        this.codigo = codigo;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getSemestre() {
        return semestre;
    }

    public void setSemestre(Integer semestre) {
        this.semestre = semestre;
    }

    public Curso getCodigocurso() {
        return codigocurso;
    }

    public void setCodigocurso(Curso codigocurso) {
        this.codigocurso = codigocurso;
    }

    public Professor getSiapeprofessor() {
        return siapeprofessor;
    }

    public void setSiapeprofessor(Professor siapeprofessor) {
        this.siapeprofessor = siapeprofessor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Disciplina)) {
            return false;
        }
        Disciplina other = (Disciplina) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Disciplina[ codigo=" + codigo + " ]";
    }
    
}
