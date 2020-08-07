package category.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import category.model.vo.Category;

public class CategoryDao {
	public CategoryDao() {};
	
	public ArrayList<Category> selectCategory(Connection conn) {
		ArrayList<Category> list = new ArrayList<Category>();
		
		return list;
	};
	
	public Category selectOneCategory(Connection conn, String catename) {
		Category category = new Category();
		
		return category;
	};

	public int insertCategory(Connection conn, String catename) {
		int result = 0;
		
		return result;
	};
	
	public int updateCategory(Connection conn, String catename) {
		int result = 0;
		
		return result;
	};
	
	public int deleteCategory(Connection conn, String catename) {
		int result = 0;
		
		return result;
	};
}
