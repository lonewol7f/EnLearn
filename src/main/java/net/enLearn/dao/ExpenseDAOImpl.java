package net.enLearn.dao;

import net.enLearn.entity.Event;
import net.enLearn.entity.Expense;
import net.enLearn.service.ExpenseService1;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.*;
import java.util.List;

@Repository
public class ExpenseDAOImpl implements ExpenseDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private ExpenseService1 expenseService;


    @Override
    public void deleteExpense(int id) {

        Session session = sessionFactory.getCurrentSession();
        Expense expense = session.get(Expense.class,id);
        session.delete(expense);

    }

    @Override
    public Expense getExpenseById(int id) {

        Session session = sessionFactory.getCurrentSession();
        Expense expense = session.get(Expense.class,id);
        return expense;

    }


    @Override
    public void saveOrUpdate(Expense expense) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(expense);
    }


    @Override
    public List<Expense> getAllExpense() {

        Session session = sessionFactory.getCurrentSession();

        Query<Expense> query = session.createQuery("from Expense", Expense.class);
        List<Expense> expenses = query.getResultList();

        return expenses;
    }

    @Override
    public void saveImage(MultipartFile multipartFile) throws IOException {

        String uploaddir = "C:/Users/Shan Rathsarana/Google Drive/Software Project/ITP_project/src/main/webapp/resources/expenses-images/";

        byte[] bytes = multipartFile.getBytes();
        Path path = Paths.get(uploaddir + multipartFile.getOriginalFilename());
        Files.write(path,bytes);

    }

}