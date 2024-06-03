/*
** models / authModel.mjs
*/ 
//
import connection from '../db.mjs';
import bcrypt from 'bcrypt';

const password = '123456';

/** 
 * * Create Hash the password
 * */
// bcrypt.hash(password, 10, (err, hash) => {
//     if (err) {
//         console.error('Error hashing password:', err);
//         return;
//     }
//     console.log('Generated hash:', hash);

//     // Now compare the password with the hash
//     bcrypt.compare(password, hash, (err, isValid) => {
//         if (err) {
//             console.error('Error comparing password:', err);
//             return;
//         }
//         console.log('Password is valid:', isValid);
//     });
// });

export const authenticateUser = async (email, password) => {
    try {
        const [results] = await (await connection).execute('SELECT * FROM users WHERE email = ?', [email]);
        
        if (results.length > 0) {
            const user = results[0];
            const hashedPassword = user.password;
            
            // console.log('Plain password:', password);
            // console.log('Hashed password from DB:', hashedPassword);
            
            const isValidPassword = await bcrypt.compare(password, hashedPassword);
            
            // console.log('Password is valid:', isValidPassword);
            
            if (isValidPassword) {
                return user;
            }
        }
        
        return null;

        // const [results] = await (await connection).execute('SELECT * FROM users WHERE email = ?', [email]);
    
        // if (results.length > 0) {
        //     const { password: hashedPassword, ...user } = results[0];
            
        //     const isValidPassword = await bcrypt.compare(password, hashedPassword);
        //     console.info(password);
        //     if (isValidPassword) {
        //         return user;
        //     }
        // }
        // return null;

        // const results = await (await connection).execute('SELECT password FROM users WHERE email = ?', [email]);
        // const [user] = results; // Mengambil objek pertama dari array
        // console.log(user.password);
        // const { password } = user; // Mengakses nilai password dari objek tersebut
        // console.log(password);
        // if (results.length > 0) {
        //     const user = results[0];
        //     console.info("this result data query: ");
        //     console.info(results[0]);
        //     const isValidPassword = await bcrypt.compare(password, results[0].password);
        //     if (isValidPassword) {
        //         return results[0];
        //     }
        // }
        // return null;
    } catch (error) {
        throw new Error('Error authenticating user');
    }
};
