/*
    Core logic/payment flow for this comes from:
    https://stripe.com/docs/payments/accept-a-payment

    CSS from:
    https://stripe.com/docs/stripe-js
*/

var stripePublicKey = $('#id_stripe_public_key').text().slice(1, -1);
var clientSecret = $('#id_client_secret').text().slice(1, -1);
var stripe = Stripe(stripePublicKey);
var elements = stripe.elements();

// Styling for Payment Elements
var style = {
    base: {
        color: '#000',
        fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
        fontSmoothing: 'antialiased',
        fontSize: '16px',
        '::placeholder': {
            color: '#aab7c4'
        }
    },
    invalid: {
        color: '#dc3545',
        iconColor: '#dc3545'
    }
};

// Create a Payment Element that supports multiple payment methods
var paymentElementOptions = {
    layout: "tabs" // Allows switching between Card, PayPal, Klarna, etc.
};

var paymentElement = elements.create("payment", paymentElementOptions);
paymentElement.mount("#card-element");

// Google Pay / Apple Pay Button
var paymentRequest = stripe.paymentRequest({
    country: "SE", // Sweden
    currency: "sek",
    total: {
        label: "Total",
        amount: 1000 // Replace with actual amount dynamically
    },
    requestPayerName: true,
    requestPayerEmail: true
});

var prButton = elements.create("paymentRequestButton", {
    paymentRequest: paymentRequest
});

paymentRequest.canMakePayment().then(function(result) {
    if (result) {
        prButton.mount("#payment-request-button");
    } else {
        document.getElementById("payment-request-button").style.display = "none";
    }
});

// Handle form submission
var form = document.getElementById('payment-form');

form.addEventListener('submit', function(ev) {
    ev.preventDefault();

    // Disable the button and show a loading screen
    $('#submit-button').attr('disabled', true);
    $('#payment-form').fadeToggle(100);
    $('#load-overlay').fadeToggle(100);

    var saveInfo = Boolean($('#id-save-info').prop('checked'));
    var csrfToken = $('input[name="csrfmiddlewaretoken"]').val();

    var postData = {
        'csrfmiddlewaretoken': csrfToken,
        'client_secret': clientSecret,
        'save_info': saveInfo
    };

    var url = '/checkout/cache_checkout_data/';

    $.post(url, postData).done(function () {
        stripe.confirmPayment({
            elements: elements,
            confirmParams: {
                return_url: "https://www.cosmos-sweden.com/order-success/"
            }
        }).then(function(result) {
            if (result.error) {
                var errorDiv = document.getElementById('card-errors');
                var html = `
                    <span class="icon" role="alert">
                        <i class="fas fa-times"></i>
                    </span>
                    <span>${result.error.message}</span>`;
                $(errorDiv).html(html);

                $('#payment-form').fadeToggle(100);
                $('#load-overlay').fadeToggle(100);
                $('#submit-button').attr('disabled', false);
            } else {
                form.submit();
            }
        });
    }).fail(function () {
        location.reload(); // Reload the page to show Django error messages
    });
});
