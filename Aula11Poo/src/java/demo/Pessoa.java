/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package demo;

import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author rlarg
 */
public class Pessoa {
    private String cpf;
    private String nome;
    private double altura;
    private double peso;
    private Date nascimento;
    private Pessoa mãe;
    private Pessoa pai;
    
    public Pessoa getAvôPaterno(){
        if(pai==null) return null;
        return pai.getPai();
    }
    public Pessoa getAvóPaterna(){
        if(pai==null) return null;
        return pai.getMãe();
    }
    public Pessoa getAvôMaterno(){
        if(mãe==null) return null;
        return mãe.getPai();
    }
    public Pessoa getAvóMaterna(){
        if(mãe==null) return null;
        return mãe.getMãe();
    }
    
    public Integer getIdade(){
        if(nascimento == null) return null;
        Calendar hoje = Calendar.getInstance();
        Calendar nasc = Calendar.getInstance();
        nasc.setTime(nascimento);
        int anoAtual = hoje.get(Calendar.YEAR);
        int anoDeNascimento = nasc.get(Calendar.YEAR);
        return anoAtual - anoDeNascimento;
    }
    
    public Pessoa(String nome){
        this.nome = nome;
    }

    public Pessoa(String cpf, String nome, double altura, double peso, Date nascimento) {
        this.cpf = cpf;
        this.nome = nome;
        this.altura = altura;
        this.peso = peso;
        this.nascimento = nascimento;
    }

    public Date getNascimento() {
        return nascimento;
    }

    public void setNascimento(Date nascimento) {
        this.nascimento = nascimento;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public Pessoa getMãe() {
        return mãe;
    }

    public void setMãe(Pessoa mãe) {
        this.mãe = mãe;
    }

    public Pessoa getPai() {
        return pai;
    }

    public void setPai(Pessoa pai) {
        this.pai = pai;
    }
}