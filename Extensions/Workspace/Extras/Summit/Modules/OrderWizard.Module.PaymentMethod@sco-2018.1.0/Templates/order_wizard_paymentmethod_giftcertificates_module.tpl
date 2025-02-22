<div class="order-wizard-paymentmethod-giftcertificates-module">
	{{#if pageHeader}}
	<header class="order-wizard-paymentmethod-giftcertificates-module-step-header">
		<h2 class="order-wizard-paymentmethod-giftcertificates-module-section-header">
			{{pageHeader}}
		</h2>
	</header>
	{{/if}}

	<div class="order-wizard-paymentmethod-giftcertificates-module-expander-head">
		<a class="order-wizard-paymentmethod-giftcertificates-module-expander-head-toggle collapsed" data-toggle="collapse" data-target="#gift-certificate-form" aria-expanded="false" aria-controls="gift-certificate-form">
			{{#if hasGiftCertificates}}
			{{translate 'Add other Gift Certificate'}}
			{{else}}
			{{translate 'Apply a Gift Certificate'}}
			{{/if}}
			<i class="order-wizard-paymentmethod-giftcertificates-module-expander-icon"></i>
		</a>
	</div>
	<form id="gift-certificate-form" class="order-wizard-paymentmethod-giftcertificates-module-form collapse" data-action="gift-certificate-form">
		<div class="order-wizard-paymentmethod-giftcertificates-module-form-expander-container">
			<fieldset>

				<div class="order-wizard-paymentmethod-giftcertificates-module-form-input-container">
					<input type="text" class="order-wizard-paymentmethod-giftcertificates-module-form-input" name="code">
				</div>
				<div class="order-wizard-paymentmethod-giftcertificates-module-form-submit-container">
					<button type="submit" class="order-wizard-paymentmethod-giftcertificates-module-form-submit">
						{{translate 'Apply'}}
					</button>
				</div>

				<div data-type="alert-placeholder-gif-certificate"></div>
			</fieldset>
		</div>
	</form>

	{{#if hasGiftCertificates}}
	<table class="order-wizard-paymentmethod-giftcertificates-module-table">
		<thead class="order-wizard-paymentmethod-giftcertificates-module-table-header">
		<tr>
			<th class="order-wizard-paymentmethod-giftcertificates-module-row-number">
				<span>{{translate 'Gift Certificate number'}}</span>
			</th>
			<th class="order-wizard-paymentmethod-giftcertificates-module-row-amount">
				<span>{{translate 'Amount applied'}}</span>
			</th>
			<th class="order-wizard-paymentmethod-giftcertificates-module-row-remaining">
				<span>{{translate 'Remaining balance'}}</span>
			</th>
			<th class="order-wizard-paymentmethod-giftcertificates-module-row-actions"></th>
		</tr>
		</thead>
		<tbody class="order-wizard-paymentmethod-giftcertificates-module-table-body" data-view="GiftCertificatesRecords"></tbody>
	</table>

	{{/if}}
	<div data-cms-area="order_wizard_paymentmethod_giftcertificates_cms_area_1" data-cms-area-filters="page_type"></div>
</div>




{{!----
Use the following context variables when customizing this template:

pageHeader (String)
hasGiftCertificates (Boolean)
model (Object)
model.addresses (Array)
model.addresses.0 (Object)
model.addresses.0.zip (String)
model.addresses.0.country (String)
model.addresses.0.addr2 (String)
model.addresses.0.addr1 (String)
model.addresses.0.city (String)
model.addresses.0.addr3 (String)
model.addresses.0.isvalid (String)
model.addresses.0.internalid (String)
model.addresses.0.phone (String)
model.addresses.0.defaultbilling (String)
model.addresses.0.defaultshipping (String)
model.addresses.0.isresidential (String)
model.addresses.0.state (String)
model.addresses.0.fullname (String)
model.addresses.0.company (undefined)
model.shipmethods (Array)
model.lines (Array)
model.lines.0 (Object)
model.lines.0.item (Object)
model.lines.0.item.internalid (Number)
model.lines.0.item.type (String)
model.lines.0.quantity (Number)
model.lines.0.internalid (String)
model.lines.0.options (Array)
model.lines.0.shipaddress (String)
model.lines.0.shipmethod (String)
model.lines.0.location (String)
model.lines.0.fulfillmentChoice (String)
model.paymentmethods (Array)
model.internalid (String)
model.confirmation (Object)
model.confirmation.addresses (Array)
model.confirmation.shipmethods (Array)
model.confirmation.lines (Array)
model.confirmation.paymentmethods (Array)
model.multishipmethods (Object)
model.multishipmethods.1568 (Array)
model.multishipmethods.1568.0 (Object)
model.multishipmethods.1568.0.name (String)
model.multishipmethods.1568.0.rate (Number)
model.multishipmethods.1568.0.shipcarrier (String)
model.multishipmethods.1568.0.internalid (Number)
model.multishipmethods.1568.0.rate_formatted (String)
model.multishipmethods.1568.0.check (Boolean)
model.multishipmethods.2508 (Array)
model.multishipmethods.2508.0 (Object)
model.multishipmethods.2508.0.name (String)
model.multishipmethods.2508.0.rate (Number)
model.multishipmethods.2508.0.shipcarrier (String)
model.multishipmethods.2508.0.internalid (Number)
model.multishipmethods.2508.0.rate_formatted (String)
model.lines_sort (Array)
model.lines_sort.0 (String)
model.latest_addition (undefined)
model.promocodes (Array)
model.ismultishipto (Boolean)
model.shipmethod (undefined)
model.billaddress (String)
model.shipaddress (undefined)
model.isPaypalComplete (Boolean)
model.touchpoints (Object)
model.touchpoints.logout (String)
model.touchpoints.customercenter (String)
model.touchpoints.serversync (String)
model.touchpoints.viewcart (String)
model.touchpoints.login (String)
model.touchpoints.welcome (String)
model.touchpoints.checkout (String)
model.touchpoints.continueshopping (String)
model.touchpoints.home (String)
model.touchpoints.register (String)
model.touchpoints.storelocator (String)
model.agreetermcondition (Boolean)
model.summary (Object)
model.summary.discounttotal_formatted (String)
model.summary.taxonshipping_formatted (String)
model.summary.taxondiscount_formatted (String)
model.summary.itemcount (Number)
model.summary.taxonhandling_formatted (String)
model.summary.total (Number)
model.summary.tax2total (Number)
model.summary.discountedsubtotal (Number)
model.summary.taxtotal (Number)
model.summary.discounttotal (Number)
model.summary.discountedsubtotal_formatted (String)
model.summary.taxondiscount (Number)
model.summary.handlingcost_formatted (String)
model.summary.taxonshipping (Number)
model.summary.taxtotal_formatted (String)
model.summary.totalcombinedtaxes_formatted (String)
model.summary.handlingcost (Number)
model.summary.totalcombinedtaxes (Number)
model.summary.giftcertapplied_formatted (String)
model.summary.shippingcost_formatted (String)
model.summary.discountrate (String)
model.summary.taxonhandling (Number)
model.summary.tax2total_formatted (String)
model.summary.discountrate_formatted (String)
model.summary.estimatedshipping (Number)
model.summary.subtotal (Number)
model.summary.shippingcost (Number)
model.summary.estimatedshipping_formatted (String)
model.summary.total_formatted (String)
model.summary.giftcertapplied (Number)
model.summary.subtotal_formatted (String)
model.options (Object)
model.purchasenumber (String)
model.sameAs (Boolean)

----}}

