Alias: LOINC = http://loinc.org

Profile: Herzfrequenz
Parent: Observation
Description: "Profil für Herzfrequenz"
//* identifier 1..
//* status from ObservationStatus
* basedOn only Reference(CarePlan)
* code from HeartRates (required)
//* code.coding 1..1 MS
//* code.coding = LOINC#8867-4
//* code.coding.system 1..1 MS
//* code.coding.system = http://loinc.org MS
//* code.coding.code = #8867-4
//* code.coding.code 1..
* code.coding.code 1.. MS
* code.extension contains Freitext named freitext 0..1
* subject only Reference(Patient)
* value[x] only Quantity
* valueQuantity.system = UCUM
* valueQuantity.code = #/min
* valueQuantity.code 1..1
* valueQuantity.value 1..1
* specimen 0..0

Instance: ExampleHerzfrequenz
InstanceOf: Herzfrequenz
Usage: #example
* status = #final
* code.coding = LOINC#8867-4
* subject.reference = "Patient/example"
* valueQuantity.value = 60
* valueQuantity.system = UCUM
* valueQuantity.code = #/min
* valueQuantity.unit = "pro Minute"