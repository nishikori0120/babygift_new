<script src="https://js.stripe.com/v3"></script>

<script>
var stripe = Stripe('pk_live_51Ip5QOL3ZeL8PtetDqBdry0hum4ogNM7OAgY5FT6VsyORmaxgVA2sh0DenXk0gtzEkIHUPyhdaAdUGeFblsNW0v9006rtpErpH');
stripe.redirectToCheckout({
sessionId: '<%= @session.id %>'
}).then(function (result) {
});
</script>