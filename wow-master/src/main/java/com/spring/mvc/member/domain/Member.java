package com.spring.mvc.member.domain;


import lombok.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Member {

    private String account;
    private String password;
    private String name;
    private String email;
    private Auth auth;
    private Date regDate;

}
