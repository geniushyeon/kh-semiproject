package com.coffeesazo.member.controller;

public class Temp {
	public static void main(String[] args) {
		String coffee = "클래식 에스프레소 블렌드|모리타|16,000|파푸아뉴기니|용량:200g";

		String[] coffeeArray = coffee.split("\\|");

		for(String temp : coffeeArray) {
			System.out.println(temp);
		}
		
	}
}
