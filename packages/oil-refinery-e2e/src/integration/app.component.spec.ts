describe('oil-refinery', () => {
  beforeEach(() => cy.visit('/iframe.html?id=appcomponent--primary'));
  it('should render the component', () => {
    cy.get('oil-refinery-root').should('exist');
  });
});