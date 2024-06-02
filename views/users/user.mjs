// /views/home.mjs
import header from '../layouts/header.mjs';
import footer from '../layouts/footer.mjs';

export const renderUserIndexPage = () => {
  return `
    ${header}
      <h1>Welcome Users! </h1>
    ${footer}`;
};
