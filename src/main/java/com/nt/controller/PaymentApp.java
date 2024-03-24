package com.nt.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/paytm")
public class PaymentApp {

	@GetMapping("/offers")
	public ResponseEntity<String> showPaytmOffers(){
		return new ResponseEntity<String> ( "No Offer currently available ",HttpStatus.OK);
	}
	
	@GetMapping("/pay/{amount}")
	public ResponseEntity<String> showPaytmOffers(@PathVariable("amount") Double amount){
		return new ResponseEntity<String> ( "Payment Successfull!! for amount : "+amount,HttpStatus.OK);
	}
}
