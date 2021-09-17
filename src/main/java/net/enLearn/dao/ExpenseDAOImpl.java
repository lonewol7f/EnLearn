package net.enLearn.dao;

import net.enLearn.entity.Expense;
import net.enLearn.service.ExpenseService1;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.List;

@Repository
public class ExpenseDAOImpl implements ExpenseDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private ExpenseService1 expenseService;


    @Override
    public Expense getExpenseById(int id) {


        Connection con = null;
        try {
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/enlearn?autoReconnect=true&useSSL=false", "enlearn", "enlearn");
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM expenditure");
            while (resultSet.first()) {
                Expense expense = new Expense();
                expense.setId(Integer.parseInt(resultSet.getString(1)));
                expense.setPrice(resultSet.getString(2));
                expense.setDescription(resultSet.getString(3));
                expense.setImage_path(resultSet.getString(4));
                expense.setAdmin_id(Integer.parseInt(resultSet.getString(5)));

                return expense;

            }
            return null;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public void saveOrUpdate(Expense expense) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(expense);
    }


    @Override
    public List<Expense> getAllExpense() {

        Connection con = null;
        try {
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/enlearn?autoReconnect=true&useSSL=false", "enlearn", "enlearn");
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM expenditure");
            while (resultSet.first()) {
                Expense expense = new Expense();
                expense.setId(Integer.parseInt(resultSet.getString(1)));
                expense.setPrice(resultSet.getString(2));
                expense.setDescription(resultSet.getString(3));
                expense.setImage_path(resultSet.getString(4));
                expense.setAdmin_id(Integer.parseInt(resultSet.getString(5)));

                return (List<Expense>) expense;

            }
            return null;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void delete(int expense) {
        Session session = sessionFactory.getCurrentSession();
        Expense ex = session.get(Expense.class,expense);
        session.delete(expense);

    }
}
