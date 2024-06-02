import dotenv from 'dotenv';
dotenv.config();

const assetsPath = process.env.ASSET_URL_LOGIN || '/login/assets/';

import header from './layouts/header-login.mjs';
import footer from './layouts/footer-login.mjs';

export const renderLoginPage = () => {
    return `
        ${header}
        <div class="d-flex flex-column flex-root">
            <div class="login login-3 wizard d-flex flex-column flex-lg-row flex-column-fluid">
                <div class="login-aside d-flex flex-column flex-row-auto">
                    <div class="d-flex flex-column-auto flex-column pt-lg-40 pt-15">
                        <a href="#" class="login-logo text-center pt-lg-25 pb-10">
                            <img src="${assetsPath}media/logos/logo-1.png" class="max-h-70px" alt=""/>
                        </a>
                    </div>
                    <div class="aside-img d-flex flex-row-fluid bgi-no-repeat bgi-position-x-center" style="background-position-y: calc(100% + 5rem); background-image: url(${assetsPath}media/svg/illustrations/login-visual-5.svg)"></div>
                </div>
                <div class="login-content flex-row-fluid d-flex flex-column p-10">
                    <div class="text-right d-flex justify-content-center">
                    </div>
                    <div class="d-flex flex-row-fluid flex-center">
                        <div class="login-form">
                            <form class="form" id="kt_login_singin_form" action="">
                                <div class="pb-5 pb-lg-15">
                                    <h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg">Sign In</h3>
                                </div>
                                <div class="form-group">
                                    <label class="font-size-h6 font-weight-bolder text-dark">Your Email</label>
                                    <input class="form-control h-auto py-7 px-6 rounded-lg border-0" type="text" name="username" autocomplete="off"/>
                                </div>
                                <div class="form-group">
                                    <div class="d-flex justify-content-between mt-n5">
                                        <label class="font-size-h6 font-weight-bolder text-dark pt-5">Your Name</label>
                                    </div>
                                    <input class="form-control h-auto py-7 px-6 rounded-lg border-0" type="password" name="password" autocomplete="off"/>
                                </div>
                                <div class="pb-lg-0 pb-5 text-right">
                                    <button type="submit" id="kt_login_singin_form_submit_button" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3">Sign In</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        ${footer}
    `;
};