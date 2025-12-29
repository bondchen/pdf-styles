************************************************************************

Editor/PE Customization Subdirectories
----------------------------------------
This directory can be used to perform Editor/PE customizations.
Following is a description of each subdirectory and its use.  You can
override the location of the custom directory by setting the APTCUSTOM
environment variable to a series of alternative custom directories with
the same subdirectory structure.

Directory       Purpose
---------       ------------------------------------------------------------
classes  -      Editor/PE adds this directory and any .jar files found
                in this directory to the CLASSPATH of its internal JVM.
composer -      Editor/PE searches in this directory and one level of
                subdirectories for any un-pathed composer configuration
                (.ccf) files.  For more information, see the help topic for
                the composer_sysid() function.
datamerge -     Editor/PE searches in this directory and one level of
                subdirectories for any un-pathed datamerge configuration
                (.dmf) files.
dialogs  -      Editor searches in this directory for any un-pathed
                dialog files (XUI) such as with the
                Application.createDialogFromFile AOM method. Editor
                system dialogs are found in <install-tree>/lib/dialogs.
                This directory should be used for site/client specific
                dialogs.
dictionaries -  Editor/PE searches in this directory for any
                user-defined dictionaries that are used by the spell
                checker.
ditarefs -      Editor/PE searches in this directory and one level of
                subdirectories for any un-pathed dita references.
dmplayout -	Editor/PE searches in this directory for template 
		subdirectories when composing using the Digital Millenum
		Publisher.
doctypes -      Editor/PE searches in this directory and its first
                level of subdirectories for "catalog" files.  These catalog
                files will be used, when opening an instance, to look up a
                doctype given the FPI (formal public identifier) from the
                instance.
entities -      Editor/PE searches in this directory and one level of
                subdirectories for any un-pathed references to file entities.
fonts    -      Editor/PE searches in this directory for any un-pathed 
                references to AFM or TFM files.  This is the preferred
                place to install custom AFM or TFM files.  In addition (Unix
                only), PFA files can be placed in this directory.
formats  -      Editor/PE searches in this directory for Pubtex format
                files otherwise found in <install-tree>/formats.
framesets    -  Editor searches in this directory for any frameset
                directories (specified in a .dcf file) for use with the
                File->Compose->For Web... feature.
graphics -      Editor/PE searches in this directory and one level of
                subdirectories for any un-pathed references to graphics.
importexport -  Editor/PE searches in this directory for 
                Import/Export-related files otherwise found in 
                <install-tree>/lib/importexport/lib.  User-defined 
                configuration files, RTF templates files, and MapTemplates 
                may reside in this directory and any subdirectories. 
                PE requires MapTemplates to reside here when using 
                PE for Import/Export operations from Editor.
inputs   -      Editor/PE searches in this directory for Pubtex input
                files otherwise found in <install-tree>/inputs.
layouttemplate -Editor search in this directory for any template directories
	        for use with the File->Compose->For Digital Media Publisher.
lib/dll  -      (Windows only) Editor/PE prepends this directory to
                the PATH environment variable.  This directory is designed
                to hold native (.dll) modules.  Because this directory is
                added to PATH, they can be referenced without a full path.
lib/$arch -     (Unix only) Editor/PE adds this directory to the
                LD_LIBRARY_PATH environment variable.  This directory is
                designed to hold native (.so) modules.  Because this
                directory is added to LD_LIBRARY_PATH, they can be
                referenced without a full path.  An example lib/$arch
                directory on Solaris might be lib/sun4r5.
lib      -      This is organized the same as <install-tree>/lib.
                Editor/PE searches this directory for custom versions of
                pubview.fnt, pubview.cf, charent.cf, tfmfont.cf, tfontsub.cf,
                tfmscaling.cf, xcharset.cf, xfontsub.cf, xpsfont.map,
                wcharset.cf, wfontsub.cf, wpsfont.map, prted.pro, apteqn.cf,
                and apteqn.fnt.  Also files with the extension ".pdfcf"
                (Direct PDF configuration files) will appear in the Compose->PDF
                dialog configuration file dropdown.
lib/locale/<locale> - This is organized the same as <install-tree>/lib/locale/<locale>.  
                Editor/PE searches these directories for locale-specific custom 
                versions of pubview.fnt, pubview.cf, ixlang.cf, charent.cf, 
                tfmfont.cf, tfontsub.cf, tfmscaling.cf, xcharset.cf, xfontsub.cf, 
                xpsfont.map, wcharset.cf, wfontsub.cf, and wpsfont.map.
                Also files with the extension ".pdfcf" (Direct PDF configuration files)
                will appear in the Compose->PDF dialog configuration file dropdown
                if running in the indicated locale.
lib/ixlang  -   This is organized the same as <install-tree>/lib/ixlang.
                Editor/PE searches this directory for custom versions of ixlang.cf
                as well as other files distributed in <install-tree>/lib/ixlang.
publishingrules
         -      Editor searches in this directory for publishing rule files
                (*.prcf) which contain definitions of publishing rules and
                publishing rule sets.
pubps    -      (Unix only) Editor/PE searches in this directory for 
                Pubps configuration files pubps.opt, pubps.fnt, and pubps.pro 
                which are otherwise found in <install-tree>/pubps
pubview  -      Editor/PE searches in this directory for Pubview 
                configuration files pubview.cf and pubview.fnt which 
                are otherwise found in <install-tree>/pubview
scripts  -      Editor/PE searches in this directory and one level of
                subdirectories for 
                .acl (Arbortext Command Language), 
                .js (JavaScript or JScript), 
                .vbs (VBScript) files
                and .pls (PerlScript) files
                in response to the ACL "source" and "require" commands.
                ACL, JavaScript, JScript, VBScript, and PerlScript files that are
                part of an Editor/PE customization should be placed here.
stylermodules - Editor searches in this directory and one level of
                subdirectories when processing XIncludes of stylesheet modules.
tagtemplates -  Editor searches in this directory for any tag template
                files (*.tpl) for use with the Tools->Tag Templates feature.

editinit -      Editor executes the code files found in this directory
                each time a document is opened for interactive editing.
                The following types of files are processed (in the order
                listed) in this directory.
                *.acl   - Any Arbortext Command Language files are
                          sourced. The current document may be accessed
                          using the current_doc() function.  Sourcing
                          errors are reported.
                *.js    - Any JavaScript or JScript files are sourced.  
                          The current document may be accessed using the 
                          AOM (Arbortext Object Model) 
                          Application.activeDocument method.
                          Sourcing errors are reported.
                *.class - Any Java .class file in this directory is
                          assumed to be a compiled Java class that is
                          not part of a named package.  It is further
                          assumed that the file implements a 
                          "public static void main(String[] args)" method.
                          Editor/PE calls that method with an empty
                          String array.  If the .class file does not
                          implement such a method, an error is reported.
                          This method would typically be a small (bootstrap)
                          module that would call into the Java code residing
                          in a .jar file in the classes directory.  The
                          current document may be accessed using the AOM
                          (Arbortext Object Model) Application.activeDocument
                          method.
                *.vbs   - Any VBScript files are sourced.
                          The current document may be accessed using the 
                          AOM (Arbortext Object Model) 
                          Application.activeDocument method.
                          Sourcing errors are reported.
                *.pls   - Any PerlScript files are sourced.
                          The current document may be accessed using the
                          AOM (Arbortext Object Model)
                          $Application->activeDocument method.
                          Sourcing errors are reported.
init     -      Editor/PE executes the code files found in this
                directory once at start-up time.  This execution happens
                after the previous directories have been processed.  The
                following types of files are processed (in the order
                listed) in this directory.
                *.acl   - Any Arbortext Command Language files are
                          sourced. Sourcing errors are reported.
                *.js    - Any JavaScript or JScript files are sourced.  
                          Sourcing errors are reported. 
                *.class - Any Java .class file in this directory is
                          assumed to be a compiled Java class that is
                          not part of a named package.  It is further
                          assumed that the file implements a 
                          "public static void main(String[] args)" method.
                          Editor/PE calls that method with an empty
                          String array.  If the .class file does not
                          implement such a method, an error is reported.
                          This method would typically be a small (bootstrap)
                          module that would call into the Java code residing
                          in a .jar file in the classes directory.
                *.vbs   - Any VBScript files are sourced.
                          Sourcing errors are reported. 
                *.pls   - Any PerlScript files are sourced.
                          Sourcing errors are reported.

Note: Rhino Javascript is the default interpreter for .js files
To enable Microsoft JScript as the default interpreter, set the
"javascriptinterpreter" set option to a value of "jscript".

That is:  set javascriptinterpreter = "jscript"

You can set this option at startup in a script or ACL file added
to the "init" directory described above.  (Refer to the
Application.setOption method in the "Programmer's Guide for Arbortext Products"
or "set javascriptinterpreter" in the Editor online help for
details.)

You can also set this option on an individual file basis.
(Refer to "Scripting" in the "Programmer's Guide for Arbortext Products".)




The following is a description of each file in this directory and its use.

File            Purpose
---------       ------------------------------------------------------------
custom.xml -    Supplies a default name for this custom directory which will be
                used as the New dialog category for any document types within
                the directory that do not specify a category in their .dcf 
		file.
		Other markup in this file may be used in the future.
