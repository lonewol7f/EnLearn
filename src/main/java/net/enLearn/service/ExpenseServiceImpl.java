package net.enLearn.service;

import net.enLearn.dao.ExpenseDAOImpl;
import net.enLearn.entity.Expense;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public class ExpenseServiceImpl<ExpenseDAO1> implements ExpenseService1{

    @Autowired
    private ExpenseDAOImpl expenseDAO;

    @Override
    @Transactional
    public List<Expense> getAllExpenses() {

        return expenseDAO.getAllExpense();
    }

    @Override
    @Transactional
    public void saveOrUpdate(Expense expense) {
        expenseDAO.saveOrUpdate(expense);
    }

    @Override
    @Transactional
    public Expense getExpenseById(int id) {
        return expenseDAO.getExpenseById(id);
    }

    @Override
    @Transactional
    public void deleteExpense(int expense) {
        expenseDAO.deleteExpense(expense);
    }

    @Override
    public void saveImage(MultipartFile multipartFile) throws IOException {

        expenseDAO.saveImage(multipartFile);


    }
}