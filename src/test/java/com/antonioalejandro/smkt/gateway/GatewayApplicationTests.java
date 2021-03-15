package com.antonioalejandro.smkt.gateway;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class GatewayApplicationTests {

	@Test
	void contextLoads() {
		assertDoesNotThrow(()-> {
			GatewayApplication.main(new String[]{});
		});
	}

}
