// test button

// lets take all invoices
$es:=ds.Invoices.all()

//pick one randomly
$invoice:=$es[Random%$es.length]

//create a context
$context:={}
$context.invoice:=$invoice
$context.buyer:=$invoice.buyer
$context.seller:=$invoice.seller
$context.cars:=$invoice.cars.orderBy("model.brand asc, model.model asc")

// set context and compute formulas
WP SET DATA CONTEXT(Form.wpArea; $context)
WP COMPUTE FORMULAS(Form.wpArea)
