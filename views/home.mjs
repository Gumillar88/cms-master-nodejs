// /views/home.mjs
import header from './layouts/header.mjs';
import footer from './layouts/footer.mjs';

export const renderDashboardPage = () => {
  return `
    ${header}
      <h1>Welcome Home! </h1>
    ${footer}`;
};
