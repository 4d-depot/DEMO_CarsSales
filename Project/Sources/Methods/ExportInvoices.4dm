//%attributes = {}
var $invoices : cs.InvoicesSelection
var $template : Object

// Load the template for invoices
$template:=ds.Templates4DWP.query("name= :1"; "CarSales").first().wp

// select the first 15 invoices (demo purpose)
$invoices:=ds.Invoices.all().slice(0; 15)

// create previews (demo purpose)
SET PRINT PREVIEW(True)  // demo purpose

// launch class function printInvoices()
$invoices.exportInvoices($template)

ALERT("Files exported next to the data file")
