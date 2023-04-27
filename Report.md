# Introduction

## Members

1. Chieh-Hung Cheng (chc441)
2. Hsu-Chiang Hsu (hsh40)
3. Zhecheng Qi (zhq27)

## Project

- Name: Tourist Attractions website
- GitHub: https://github.com/chengchiehhung/infsci2560-awan-final
- Description: The Sichuan Attractions Service is a web-based system that provides information on various attractions in Sichuan, China. The system is designed to allow users to browse different attractions, view their details and reviews, and plan their visits. The system consists of a database to store the attraction's data and a set of backend APIs to provide access to the data. Sichuan Attractions Service with a database and backend APIs is a particularly meaningful and valuable resource for travelers who are interested in exploring Sichuan. Sichuan is a vibrant and dynamic city with a rich history and culture, and there are countless attractions to see and experience. There is also a login system to enable users to keep their favorite attractions or post new attractions they found.

## Objective

With the rapid development of society, people's lives are constantly changing, and at the same time, their consumption levels are also undergoing different changes. Based on the rapid development of the tourism industry, the traditional way of buying tickets directly at tourist attractions is outdated. Nowadays, people prefer to purchase tickets online and then exchange them for admission at the scenic area. Therefore, we urgently need to develop a ticket reservation system for tourist attractions, which greatly saves the time of the general public, improves work efficiency, and brings many conveniences to our lives.

This system is designed with Vue and ElementUI for the user interface, and Vuex state management for data management. Vue is an MVVM architecture, which is easy to develop and use. ElementUI provides many components that can be used directly, greatly saving time. The backend is implemented through the SpringBoot SSM structure, which is currently the mainstream structure for Java language. Operating data is very convenient.

## Team member's contributions

1. Chieh-Hung Cheng (chc441)
    - Design Databases with MySQL and import data into it.
    - Redis
    - Communicating with back-end.
2. Hsu-Chiang Hsu (hsh40)
    - Back-end, using Java Springboot and designing related routes.
    - Communicating with front-end.
3. Zhecheng Qi (zhq27)
    - Front-end, including Vues.js and ElementUI.
    - Communicating with back-end.

## Technical Architecture

### Front-end

- Using Vue.js and ElementUI to design web pages and layouts.
- Using axios to fetch data from the backends.

### Back-end

- Using webpack & node.js to construct the front-end services.
- Using Java Spring MVC to handle requests from front-end.

### Databases

- Using MySQL to design and store data.
- Redis

## Challenges

1. Java maven: We spent a quite amount of time figuring out how to use it to construct a project.
2. Deployment: We are struggling to deploy our projects into Cloud with one public IP.
3. Front-end and Back-end integration.

## Future Work

- We would like to add more complicated searching functions and recommendation by each user's preference.
- If we have more time, we would like to learn more about Java Spring boot and its related underlying functionality, and Vue.js.

## Conclusion

We learned a lot from this course, including basic full stack knowledge. How front-end can communicate with back-end. Also, how to write Epress.js routes and connect to Mongo DB. We firmly believe these tech stacks are important to the future career. Based on the foundation, one of our group member recommend us to learn Java Spring as backend since there are a lot of people using this.
	Overall, this course is beneficial.

## Resources

1.	https://maven.apache.org/what-is-maven.html
2.	https://redis.io/
3.	https://spring.io/
4.	https://www.mysql.com/


How to test it
- You can run the whole project on your local side.

firstly, you should install the environment in your local machine, like this picture: firstly, the node.js, the first picture in the img file, and the second one is to install mysql database, and create the travel database, the second picture in the img file, the third one is to install the java IDE IDEA to run the springboot. the edition is 2021.3.3,like the third picture.

firstly , you should run the redis database, like the fourth picture in the img fold:

secondly, you should run the itfxq_travel_parent folder in the IDEA, like the fifth picture in the img fold:

finally, you should enter into the itfxq_travel_admin fold to run the admin system on your local host, like the sixth picture in the img fold:

then enter into the itfxq_travel_web to run the front-end page on your local host, like the seventh picture in the img fold:

the final page is the eighth picture and ninth picture.

the user account is admin, the password is 123456.
