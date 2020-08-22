//
//  users.hpp
//  Tom
//
//  Created by JunHerrenYang on 2020/8/21.
//  Copyright © 2020 JunHerrenYang. All rights reserved.
//
#include<iostream>
#ifndef users_hpp
#define users_hpp

class User {
    
public:
class UserBuilder {
public:
   const std::string m_firstName;     // 必传参数
   const std::string m_lastName;      // 必传参数
   int m_age;              // 可选参数
   std::string m_phone;         // 可选参数
   std::string m_address;       // 可选参数
public:
   
   UserBuilder(  const std::string& firstName,  const std::string& lastName): m_firstName(firstName), m_lastName(lastName) {
  
   }
   ~UserBuilder(){
       m_age = 0;
       m_phone.clear();
       m_address.clear();
   }
    
   UserBuilder& age( const int& age) {
       this->m_age= age;
       return *this;
   }

   UserBuilder& phone(const std::string& phone){
       this->m_phone = phone;
       return *this;
   }

   UserBuilder& address(const std::string& address) {
       this->m_address = address;
       return *this;
   }
  
   User build() {
       UserBuilder my =UserBuilder(*this);
       return  User(my);
   }
    
};
    
private:
    
    User(UserBuilder build): m_firstName(build.m_firstName), m_lastName(build.m_firstName){
        this->m_age = build.m_age;
        this->m_phone = build.m_phone;
        this->m_address = build.m_address;
    }
    
public:
    ~User(){
        m_age = 0;
        m_phone.clear();
        m_address.clear();
    }
    void getInfo(){
        std::cout << "Name："<<m_firstName <<m_lastName <<" age: "<< m_age<<" phnoe: " << m_phone << " address: " << m_address<<std::endl;
    }
 
private:
    const std:: string m_firstName;     // 必传参数
    const std::string m_lastName;      // 必传参数
    int m_age;              // 可选参数
    std::string m_phone;         // 可选参数
    std::string m_address;       // 可选参数
 
 };


 
// auto it = User::UserBuilder("JuneHerren","Yang").age(20).phone("123456789").address("亚特兰蒂斯大陆").build();
// it.getInfo();

#endif /* users_hpp */
