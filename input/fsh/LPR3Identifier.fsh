Profile: Lpr3Identifier
Parent: Identifier
Id: lpr3-Identifier
Title: "LPR3 Identifier"
Description: "Identifier holding a LPR3 identifier"
* system 1..
* system = "https://www.esundhed.dk/Registre/Landspatientregisteret" (exactly) 
* value 1..
* value obeys uuidv5
* value ^constraint[1].requirements = "LPR3 episode of care identifiers must conform to a UUIDv5"
* value ^constraint[1].source = "https://scandihealth.github.io/lpr3-docs/"

Invariant: uuidv5
Description: "LPR3 episodeOfCare identifiers must conform to a UUIDv5"
Severity: #error
Expression: "value.matches('urn:uuid:[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[5][a-fA-F0-9]{3}-[89aAbB][a-fA-F0-9]{3}-[a-fA-F0-9]{12}')"