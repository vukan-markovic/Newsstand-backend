%dw 1.0
%output application/java
---
{
	lozinka: encrypt(payload.lozinka)
} 