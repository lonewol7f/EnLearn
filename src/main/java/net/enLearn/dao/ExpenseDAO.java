package net.enLearn.dao;

import net.enLearn.entity.Expense;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ExpenseDAO {

    void deleteExpense(int id);
    Expense getExpenseById(int id);
    void saveOrUpdate(Expense expense);
    List<Expense> getAllExpense();
    void saveImage(MultipartFile multipartFile) throws IOException;

}