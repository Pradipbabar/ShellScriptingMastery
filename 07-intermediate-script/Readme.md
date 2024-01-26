# PowerShell Scripting Mastery

## Intermediate Scripting Techniques

Welcome to the Intermediate Scripting Techniques section of the PowerShell Scripting Mastery guide. In this section, you'll explore intermediate scripting concepts, including parameter expansion, and dive into more complex control structures with PowerShell.

### Parameter Expansion

#### 1. **Positional Parameters:**
   - Leverage positional parameters for passing arguments to functions or scripts.
     ```powershell
     function Example-Function {
         param(
             $param1,
             $param2
         )
         Write-Host "Parameter 1: $param1"
         Write-Host "Parameter 2: $param2"
     }

     Example-Function "Value1" "Value2"
     ```

#### 2. **Named Parameters:**
   - Use named parameters for clarity and to handle parameters out of order.
     ```powershell
     Example-Function -param2 "Value2" -param1 "Value1"
     ```

#### 3. **Splatting:**
   - Employ splatting to pass a collection of parameters as a single variable.
     ```powershell
     $parameters = @{
         param1 = "Value1"
         param2 = "Value2"
     }

     Example-Function @parameters
     ```

### More Complex Control Structures

#### 1. **Switch Statements:**
   - Implement switch statements for more structured conditional logic.
     ```powershell
     $day = "Monday"

     switch ($day) {
         "Monday"    { Write-Host "It's the start of the week." }
         "Friday"    { Write-Host "It's almost the weekend!" }
         default     { Write-Host "It's a regular day." }
     }
     ```

#### 2. **ForEach-Object:**
   - Use `ForEach-Object` for iterating through collections or pipeline input.
     ```powershell
     $numbers = 1..5

     $numbers | ForEach-Object {
         Write-Host "Current Number: $_"
     }
     ```

#### 3. **While Loop:**
   - Implement a `while` loop for repetitive execution based on a condition.
     ```powershell
     $counter = 1

     while ($counter -le 5) {
         Write-Host "Iteration $counter"
         $counter++
     }
     ```

### How to Use This Guide

1. **Parameter Expansion Practice:**
   - Experiment with positional parameters, named parameters, and splatting in your scripts to understand their usage and flexibility.

2. **Control Structure Exploration:**
   - Implement switch statements, ForEach-Object, and while loops to handle various scenarios and enhance the flow of your scripts.

3. **Documentation Review:**
   - Refer to the [PowerShell Documentation - about_Parameters](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_parameters) and [PowerShell Documentation - about_Switch](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_switch) for more detailed information.

### Additional Resources

- [PowerShell Documentation - about_Parameters](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_parameters)
- [PowerShell Documentation - about_Switch](https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-about_switch)

By the end of this section, you will have a strong grasp of intermediate scripting techniques in PowerShell, enabling you to handle more complex scenarios and write more sophisticated scripts. Happy scripting!
