package com.fotbiler.marketivo.backend.service;

import com.fotbiler.marketivo.backend.dto.PaymentInfo;
import com.fotbiler.marketivo.backend.dto.Purchase;
import com.fotbiler.marketivo.backend.dto.PurchaseResponse;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;

public interface CheckoutService {
    PurchaseResponse placeOrder(Purchase purchase);
    PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException;
}
