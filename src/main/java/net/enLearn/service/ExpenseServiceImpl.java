package net.enLearn.service;

import net.enLearn.dao.ExpenseDAOImpl;
import net.enLearn.entity.Expense;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        expenseDAO.delete(expense);
    }
}
