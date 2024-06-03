import dotenv from 'dotenv';
dotenv.config();

const assetsPath = process.env.ASSET_URL_LOGIN || '/login/assets/';

/*
** /views/layouts/footer-login.mjs
*/ 
const header = `
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="${assetsPath}plugins/custom/prismjs/prismjs.bundle.js?v=7.0.6"></script>
        <script src="${assetsPath}js/main.js"></script>
    </body>
</html>
`;

export default header;