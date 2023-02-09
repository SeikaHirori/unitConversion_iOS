#  Unit Conversion
***Project Specifications***
- https://www.hackingwithswift.com/100/swiftui/19

Note-worthy:
- This is iOS first project that will be built from scratch.
___

# Specifications
**Logic**
- IMPORTANT:
    - Units will be rounded to the nearby tenth place.
        - Examples:
            - 100.2913 ~= 100.3
            - 0.12 ~= 0.1
- [ ] Pick a type of unit conversion
    - Volume conversion:
        - milliliter (mL)
            - Use this as basis.
        - liter (L)
        - cup (C)
        - pint (pt)
        - gallon (gal)
    - Write conversions:
        - [x] mL to L
        - [x] mL to C
        - [x] mL to pt
        - [x] mL to gal
        
        - [x] L to mL
        - [x] C to mL
        - [x] pt to mL
        - [x] gal to mL

**User Interface**
- [x] Created private variables 
- [ ] Segmented control (from)
    - Header: "Convert from"
- [ ] Segmented control (to)
    - Header: "Convert to"
- [ ] textField where user inputs number
    - What is the amount you're converting?
    - Text (when empty) should state "Amount"
- [ ] Text where it has the result of conversion
    - Header: "Result/conversion"
