/*
** models / userModel.mjs
*/ 
import connection from '../db.mjs';

const getAllUsers = async () => {
  const [rows] = await (await connection).execute('SELECT * FROM users');
  return rows;
};

const getUserById = async (id) => {
  const [rows] = await (await connection).execute('SELECT * FROM users WHERE id = ?', [id]);
  return rows[0];
};

const getUserByEmail = async (email) => { 
  const data = await (await connection).execute('SELECT * FROM users WHERE email = ?', [email]);

  return data;
};

const createUser = async (user) => {
  const { fullname, email, password, type } = user;
  const [result] = await (await connection).execute('INSERT INTO users (fullname, email, password, type) VALUES (?, MD5(?), ?, ?)', [fullname, email, password, type]);
  return result.insertId;
};

const updateUser = async (id, user) => {
  const { user_login, user_pass, user_nicename, user_email } = user;
  const [result] = await (await connection).execute('UPDATE users SET user_login = ?, user_pass = MD5(?), user_nicename = ?, user_email = ? WHERE ID = ?', [user_login, user_pass, user_nicename, user_email, id]);
  return result.affectedRows;
};

const deleteUser = async (id) => {
  const [result] = await (await connection).execute('DELETE FROM users WHERE id = ?', [id]);
  return result.affectedRows;
};

export {
  getAllUsers,
  getUserById,
  getUserByEmail,
  createUser,
  updateUser,
  deleteUser
};
