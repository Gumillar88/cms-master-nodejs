// models/userModel.mjs
import connection from '../db.mjs';

const getAllUsers = async () => {
  const [rows] = await (await connection).execute('SELECT * FROM wptj_users');
  return rows;
};

const getUserById = async (id) => {
  const [rows] = await (await connection).execute('SELECT * FROM wptj_users WHERE ID = ?', [id]);
  return rows[0];
};

const createUser = async (user) => {
  const { user_login, user_pass, user_nicename, user_email } = user;
  const [result] = await (await connection).execute('INSERT INTO wptj_users (user_login, user_pass, user_nicename, user_email) VALUES (?, MD5(?), ?, ?)', [user_login, user_pass, user_nicename, user_email]);
  return result.insertId;
};

const updateUser = async (id, user) => {
  const { user_login, user_pass, user_nicename, user_email } = user;
  const [result] = await (await connection).execute('UPDATE wptj_users SET user_login = ?, user_pass = MD5(?), user_nicename = ?, user_email = ? WHERE ID = ?', [user_login, user_pass, user_nicename, user_email, id]);
  return result.affectedRows;
};

const deleteUser = async (id) => {
  const [result] = await (await connection).execute('DELETE FROM wptj_users WHERE ID = ?', [id]);
  return result.affectedRows;
};

export {
  getAllUsers,
  getUserById,
  createUser,
  updateUser,
  deleteUser
};
