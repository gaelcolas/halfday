Describe 'Basic Object Concepts' {
    It 'Should create a .Net object of rectangle' {
        $rectangle = $( $null )#<-- replace this
        $rectangle | Should BeOfType [Drawing.rectangle]
    }


    It 'Creates a WScript.Shell COM object' {
        $WshShell = $(  $null    ) #<-- replace this
        $WshShell.GetType().Name | Should Be '__ComObject'
    }

    It 'Creates a C# Class halfDay in namespace PSUG with a property difficulty of type string settable in ctor' {
        #Write your code here

        { [psug.halfDay]::new('300') } | Should not Throw
    }

    It 'Creates a PSv5 Class Dog with a property size of type int' {
        #define the class here

        {[Dog]::new(4)} | Should Not throw
        [Dog]::new(6).size | should be 6
    }

    It 'Gives the matching type accelerator for PSObject' {
        #change the typename value here
        $TypeName = '[writeAcceleratorHere]'
        
        ([scriptblock]::create($TypeName).Invoke()[0] ).ToString() | Should be 'System.Management.Automation.PSObject'
        $TypeName | Should not be '[PSobject]'
    }

    It 'List the type of properties from a process object' {
         $obj = Get-Process | Select -first 1
         $listProperties = @('Property','...')
         diff ($obj | Get-Member | Select -expandProperty MemberType | select -unique) $listProperties | should beNullOrEmpty
    }

    It 'Creates a CustomObject with property a = 1, b = 2, c = 3' {
        $object = $($null) #<-- replace this
        $object.a | should be 1
        $object.b | should be 2
        $object.c | should be 3
    }
}
