<div class="order-wizard-msr-package-details-quantity">
	<p class="order-wizard-msr-package-details-quantity-count">
		<span class="order-wizard-msr-package-details-quantity-count-label"> {{ translate 'Quantity: ' }} </span>
		<span class="order-wizard-msr-package-details-quantity-count-value" data-type="item-quantity"> {{ lineQuantity }} </span>
	</p>
	<div class="order-wizard-msr-package-details-quantity-amount">
		<p class="order-wizard-msr-package-details-quantity-amount">
		<span class="order-wizard-msr-package-details-quantity-amount-label"> {{ translate 'Amount: ' }}</span>
			<span class="order-wizard-msr-package-details-quantity-amount-value" data-type="item-amount"> {{
			lineTotalFormatted }} </span>
		</p>
		{{#if isAmountGreaterThanTotal}}
			<small class="muted order-wizard-msr-package-details-quantity-crossed"> {{ lineAmountFormatted }} </small>
		{{/if}}
	</div>
</div>



{{!----
Use the following context variables when customizing this template:

	lineQuantity (Number)
	lineTotalFormatted (String)
	lineAmountFormatted (String)
	isAmountGreaterThanTotal (Boolean)

----}}

