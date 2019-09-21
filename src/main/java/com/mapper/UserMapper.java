package com.mapper;

import java.util.List;

import com.entity.User;

public interface UserMapper {
	//id查询
	public List<User> selectUserById(User user);
	//pwd查询
	public List<User> selectUserByPwd(User user);
	//add
	public void addUser(User user);
	//delete
	public void deleteUser(String id);
	//update
	public void updateUser(User user);
}
