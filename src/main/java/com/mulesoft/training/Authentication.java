package com.mulesoft.training;

import java.util.Base64;
import java.util.Date;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

import org.springframework.security.crypto.bcrypt.BCrypt;

import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

public class Authentication {
	static String encodedString = Base64.getEncoder().encodeToString("123".getBytes());

	public static String encrypt(String password) {
		return BCrypt.hashpw(password, BCrypt.gensalt());
	}

	public static String decrypt(String candidate_password, String stored_hash) {
		if (BCrypt.checkpw(candidate_password, stored_hash))
			return "It matches";
		else
			return "It does not match";
	}

	public static String createJWT(String id, String issuer) {
		SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
		JwtBuilder builder = Jwts.builder().setId(id).setIssuedAt(new Date(System.currentTimeMillis()))
				.setSubject("jwt").setIssuer(issuer).signWith(signatureAlgorithm, new SecretKeySpec(
						DatatypeConverter.parseBase64Binary(encodedString), signatureAlgorithm.getJcaName()));
		return builder.compact();
	}

	public static String parseJWT(String jwt) {
		try {
			Jwts.parser().setSigningKey(DatatypeConverter.parseBase64Binary(encodedString)).parseClaimsJws(jwt)
					.getBody();
			return "valid";
		} catch (Exception ex) {
			return "invalid";
		}
	}
}
