package com.zhu.entity;

import java.sql.Timestamp;


/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message  implements java.io.Serializable {


    // Fields    

     private String id;
     private String spotid;
     private Timestamp date;
     private String userid;
     private String content;


    // Constructors

    /** default constructor */
    public Message() {
    }

	/** minimal constructor */
    public Message(String id) {
        this.id = id;
    }
    
    /** full constructor */
    public Message(String id, String spotid, Timestamp date, String userid, String content) {
        this.id = id;
        this.spotid = spotid;
        this.date = date;
        this.userid = userid;
        this.content = content;
    }

   
    // Property accessors

    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }

    public String getSpotid() {
        return this.spotid;
    }
    
    public void setSpotid(String spotid) {
        this.spotid = spotid;
    }

    public Timestamp getDate() {
        return this.date;
    }
    
    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getUserid() {
        return this.userid;
    }
    
    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
   








}