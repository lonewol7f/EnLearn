package net.enLearn.dao;

import net.enLearn.entity.Advertisement;
import net.enLearn.service.AdvertiserService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Repository
public class AdvertisementDAOImpl implements AdvertisementDAO{
    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private AdvertiserService advertiserService;


    @Override
    public List<Advertisement> getAdvertisementListByAdvertiserId() {
        Session session = sessionFactory.getCurrentSession();

        int id = advertiserService.getCurrentAdvertiserId();

        List<Advertisement> r = new ArrayList<>();

        Connection con = null;
        try {
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/enlearn?autoReconnect=true&useSSL=false", "enlearn", "enlearn");
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM advertisement where advertiser_id="+id);
            while (resultSet.next()){
                Advertisement advertisement = new Advertisement();
                advertisement.setId(Integer.parseInt(resultSet.getString(1)));
                advertisement.setTitle(resultSet.getString(2));
                advertisement.setPrange(resultSet.getString(3));
                advertisement.setDescription(resultSet.getString(5));
                advertisement.setImage(resultSet.getString(4));

                r.add(advertisement);
            }


            return r;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public void saveOrUpdate(Advertisement advertisement) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(advertisement);
    }
    @Override
    public void delete(Advertisement advertisement) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(advertisement);
    }

    @Override
    public Advertisement getAdvertisementById(int id) {
        Session session = sessionFactory.getCurrentSession();



        Connection con = null;
        try {
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/enlearn?autoReconnect=true&useSSL=false", "enlearn", "enlearn");
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM advertisement where id="+id);
            while (resultSet.next()){
                Advertisement advertisement = new Advertisement();
                advertisement.setId(Integer.parseInt(resultSet.getString(1)));
                advertisement.setTitle(resultSet.getString(2));
                advertisement.setPrange(resultSet.getString(3));
                advertisement.setDescription(resultSet.getString(5));
                advertisement.setImage(resultSet.getString(4));
                con.close();
                return advertisement;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }

        return null;
    }



}