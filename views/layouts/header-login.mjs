import dotenv from 'dotenv';
dotenv.config();

const assetsPath = process.env.ASSET_URL_LOGIN || '/login/assets/';

// /views/layouts/header-login.mjs
const header = `
<!DOCTYPE html>
<html lang="en">
    <head>
        <base href="/">
        <meta charset="utf-8"/>
        <title>CMS | Content Management System</title>
        <meta name="description" content="Singin page example"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"/>

        <link href="${assetsPath}css/pages/login/login-3.css?v=7.0.6" rel="stylesheet" type="text/css"/>
        <link href="${assetsPath}plugins/global/plugins.bundle.css?v=7.0.6" rel="stylesheet" type="text/css"/>
        <link href="${assetsPath}plugins/custom/prismjs/prismjs.bundle.css?v=7.0.6" rel="stylesheet" type="text/css"/>
        <link href="${assetsPath}css/style.bundle.css?v=7.0.6" rel="stylesheet" type="text/css"/>
        <link href="${assetsPath}css/themes/layout/header/base/light.css?v=7.0.6" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="${assetsPath}media/logos/favicon.ico"/>
    </head>
    <body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
`;

export default header;