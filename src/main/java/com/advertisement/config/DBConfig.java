
package com.advertisement.config;

import com.advertisement.entity.*;
import javax.sql.DataSource;
import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EnableTransactionManagement
public class DBConfig {

    @Bean
    public HibernateTemplate hibernateTemplate() {
        return new HibernateTemplate(sessionFactory());
    }

    @Bean
    public SessionFactory sessionFactory() {
        return new LocalSessionFactoryBuilder(getDataSource())
                .addAnnotatedClasses(User.class)
                .addAnnotatedClasses(Admin.class)
                .addAnnotatedClasses(Area.class)
                .addAnnotatedClasses(CarAdvertise.class)
                .addAnnotatedClasses(CarComment.class)
                .addAnnotatedClasses(Category.class)
                .addAnnotatedClasses(District.class)
                .addAnnotatedClasses(Division.class)
                .addAnnotatedClasses(HouseAdvertise.class)
                .addAnnotatedClasses(HouseComment.class)
                .addAnnotatedClasses(OtherAdvertise.class)
                .addAnnotatedClasses(OtherComment.class)
                .addAnnotatedClasses(PostInfo.class)
                .buildSessionFactory();
    }

    @Bean
    public DataSource getDataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/advertise");
        dataSource.setUsername("root");
        dataSource.setPassword("root");
        return dataSource;
    }

    @Bean
    public HibernateTransactionManager hibTransMan() {
        return new HibernateTransactionManager(sessionFactory());
    }
}
