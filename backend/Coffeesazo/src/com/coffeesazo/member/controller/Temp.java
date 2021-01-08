package com.coffeesazo.member.controller;

public class Temp {
	public static void main(String[] args) {
		String coffee = "파푸아뉴기니 모리타|Papua New Guinea Morita|국가 : PAPUA NEW GUINEA|지역 : AIYURA BALLEY,EASTERN HIGHLANDS|농장 : MORITA|농장주 : MORITA SMALL HOLDERS|재배 고도 : 1,850M|품종 : K7,ARUSHA|가공방식 : WASHED PROCESS";

		String[] coffeeArray = coffee.split("\\|");

		for(String temp : coffeeArray) {
			System.out.println(temp);
		}
		
	}
}
