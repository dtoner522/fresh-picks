(function() {
    var stripe = Stripe('pk_test_51IjPBODXs3V4V0mMJsDZyfaP72eTACV98NxH7hZmBlmhVriyy6q9NJm7ZcidaDiFbEOh5iqD1F3IGFuEtLRin50B00WQOT2Uzd');

    var checkoutButton = document.getElementById('checkout-button-price_1IuidxDXs3V4V0mMegvGiVdq');
    checkoutButton.addEventListener('click', function () {
      /*
      * When the customer clicks on the button, redirect
      * them to Checkout.
      */
      stripe.redirectToCheckout({
        lineItems: [{price: 'price_1IuidxDXs3V4V0mMegvGiVdq', quantity: 1}],
        mode: 'payment',
        /*
        * Do not rely on the redirect to the successUrl for fulfilling
        * purchases, customers may not always reach the success_url after
        * a successful payment.
        * Instead use one of the strategies described in
        * https://stripe.com/docs/payments/checkout/fulfill-orders
        */
        successUrl: window.location.protocol + '//poppyjennings.com/success',
        cancelUrl: window.location.protocol + '//poppyjennings.com/canceled',
      })
      .then(function (result) {
        if (result.error) {
          /*
          * If `redirectToCheckout` fails due to a browser or network
          * error, display the localized error message to your customer.
          */
          var displayError = document.getElementById('error-message');
          displayError.textContent = result.error.message;
        }
      });
    });
  })();

(function() {
    var stripe = Stripe('pk_test_51IjPBODXs3V4V0mMJsDZyfaP72eTACV98NxH7hZmBlmhVriyy6q9NJm7ZcidaDiFbEOh5iqD1F3IGFuEtLRin50B00WQOT2Uzd');

    var checkoutButton = document.getElementById('checkout-button-price_1Iukg1DXs3V4V0mMN1ERinTG');
    checkoutButton.addEventListener('click', function () {
      /*
      * When the customer clicks on the button, redirect
      * them to Checkout.
      */
      stripe.redirectToCheckout({
        lineItems: [{price: 'price_1Iukg1DXs3V4V0mMN1ERinTG', quantity: 1}],
        mode: 'payment',
        /*
        * Do not rely on the redirect to the successUrl for fulfilling
        * purchases, customers may not always reach the success_url after
        * a successful payment.
        * Instead use one of the strategies described in
        * https://stripe.com/docs/payments/checkout/fulfill-orders
        */
        successUrl: window.location.protocol + '//poppyjennings.com/success',
        cancelUrl: window.location.protocol + '//poppyjennings.com/canceled',
      })
      .then(function (result) {
        if (result.error) {
          /*
          * If `redirectToCheckout` fails due to a browser or network
          * error, display the localized error message to your customer.
          */
          var displayError = document.getElementById('error-message');
          displayError.textContent = result.error.message;
        }
      });
    });
  })();

(function() {
    var stripe = Stripe('pk_test_51IjPBODXs3V4V0mMJsDZyfaP72eTACV98NxH7hZmBlmhVriyy6q9NJm7ZcidaDiFbEOh5iqD1F3IGFuEtLRin50B00WQOT2Uzd');

    var checkoutButton = document.getElementById('checkout-button-price_1IuklHDXs3V4V0mMvKcx2THD');
    checkoutButton.addEventListener('click', function () {
      /*
      * When the customer clicks on the button, redirect
      * them to Checkout.
      */
      stripe.redirectToCheckout({
        lineItems: [{price: 'price_1IuklHDXs3V4V0mMvKcx2THD', quantity: 1}],
        mode: 'payment',
        /*
        * Do not rely on the redirect to the successUrl for fulfilling
        * purchases, customers may not always reach the success_url after
        * a successful payment.
        * Instead use one of the strategies described in
        * https://stripe.com/docs/payments/checkout/fulfill-orders
        */
        successUrl: window.location.protocol + '//poppyjennings.com/success',
        cancelUrl: window.location.protocol + '//poppyjennings.com/canceled',
      })
      .then(function (result) {
        if (result.error) {
          /*
          * If `redirectToCheckout` fails due to a browser or network
          * error, display the localized error message to your customer.
          */
          var displayError = document.getElementById('error-message');
          displayError.textContent = result.error.message;
        }
      });
    });
  })();