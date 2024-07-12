<tr id="{{lineId}}" data-item-id="{{itemId}}" data-type="order-item" {{#if showGeneralClass}} class="{{generalClass}}" {{/if}} >
	<td class="transaction-line-views-cell-actionable-expanded-table-first">
		<div class="transaction-line-views-cell-actionable-expanded-thumbnail">
			{{#if isNavigable}}
				<a {{{linkAttributes}}}>
					<img src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}">
				</a>
			{{else}}
				<img src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}">
			{{/if}}
		</div>
	</td>
	<td class="transaction-line-views-cell-actionable-expanded-table-middle">
		<div class="transaction-line-views-cell-actionable-expanded-name">
		{{#if isNavigable}}
			<a {{{linkAttributes}}} class="transaction-line-views-cell-actionable-expanded-name-link">
				{{item._name}}
			</a>
		{{else}}
				<span class="transaction-line-views-cell-actionable-expanded-name-viewonly">{{item._name}}</span>
		{{/if}}
		</div>
		<div class="transaction-line-views-cell-actionable-expanded-price">
			<div data-view="Item.Price"></div>
		</div>
		<div data-view="Item.Sku"></div>
		<div class="transaction-line-views-cell-actionable-expanded-options">
			<div data-view="Item.SelectedOptions"></div>
		</div>
		<div class="transaction-line-views-cell-actionable-expanded-stock" data-view="ItemViews.Stock.View">
		</div>

		<div data-view="StockDescription"></div>
	</td>
	<td class="transaction-line-views-cell-actionable-expanded-table-middle">
		{{#if showSummaryView}}
			<div class="transaction-line-views-cell-actionable-expanded-summary" data-view="Item.Summary.View"></div>
		{{/if}}
	</td>
	<td class="transaction-line-views-cell-actionable-expanded-table-last">
		<div data-view="Item.Actions.View"></div>

		{{#if showAlert}}
			<div class="transaction-line-views-cell-actionable-expanded-alert-placeholder" data-type="alert-placeholder"></div>
		{{/if}}

		{{#if showCustomAlert}}
			<div class="alert alert-{{customAlertType}}">
				{{item._cartCustomAlert}}
			</div>
		{{/if}}
	</td>
</tr>




{{!----
Use the following context variables when customizing this template:

	model (Object)
	model.item (Object)
	model.item.internalid (Number)
	model.quantity (Number)
	model.internalid (String)
	model.options (Array)
	model.options.0 (Object)
	model.options.0.cartOptionId (String)
	model.options.0.itemOptionId (String)
	model.options.0.label (String)
	model.options.0.type (String)
	model.options.0.value (Object)
	model.options.0.value.internalid (String)
	model.options.0.value.label (String)
	model.location (String)
	model.fulfillmentChoice (String)
	lineId (String)
	item (Object)
	item.isinstock (Boolean)
	item.minimumquantity (Number)
	item.ispurchasable (Boolean)
	item.stockdescription (String)
	item.isbackorderable (Boolean)
	item.onlinecustomerprice_detail (Object)
	item.onlinecustomerprice_detail.onlinecustomerprice_formatted (String)
	item.onlinecustomerprice_detail.onlinecustomerprice (Number)
	item.onlinecustomerprice_detail.priceschedule (Array)
	item.onlinecustomerprice_detail.priceschedule.0 (Object)
	item.onlinecustomerprice_detail.priceschedule.0.maximumquantity (Number)
	item.onlinecustomerprice_detail.priceschedule.0.minimumquantity (Number)
	item.onlinecustomerprice_detail.priceschedule.0.price (Number)
	item.onlinecustomerprice_detail.priceschedule.0.price_formatted (String)
	item.custitem3 (String)
	item.internalid (Number)
	item.showoutofstockmessage (Boolean)
	item.outofstockbehavior (String)
	item.custitem4 (String)
	item.quantityavailable (undefined)
	item.outofstockmessage (String)
	item.options (Array)
	item.itemimages_detail (Object)
	item.itemimages_detail.A (Object)
	item.itemimages_detail.A.A (Object)
	item.itemimages_detail.A.A.urls (Array)
	item.itemimages_detail.A.A.urls.0 (Object)
	item.itemimages_detail.A.A.urls.0.altimagetext (String)
	item.itemimages_detail.A.A.urls.0.url (String)
	item.itemimages_detail.A.E (Object)
	item.itemimages_detail.A.E.urls (Array)
	item.itemimages_detail.A.E.urls.0 (Object)
	item.itemimages_detail.A.E.urls.0.altimagetext (String)
	item.itemimages_detail.A.E.urls.0.url (String)
	item.itemimages_detail.A.O (Object)
	item.itemimages_detail.A.O.urls (Array)
	item.itemimages_detail.A.O.urls.0 (Object)
	item.itemimages_detail.A.O.urls.0.altimagetext (String)
	item.itemimages_detail.A.O.urls.0.url (String)
	item.itemimages_detail.R (Object)
	item.itemimages_detail.R.A (Object)
	item.itemimages_detail.R.A.urls (Array)
	item.itemimages_detail.R.A.urls.0 (Object)
	item.itemimages_detail.R.A.urls.0.altimagetext (String)
	item.itemimages_detail.R.A.urls.0.url (String)
	item.itemimages_detail.R.E (Object)
	item.itemimages_detail.R.E.urls (Array)
	item.itemimages_detail.R.E.urls.0 (Object)
	item.itemimages_detail.R.E.urls.0.altimagetext (String)
	item.itemimages_detail.R.E.urls.0.url (String)
	item.itemimages_detail.R.O (Object)
	item.itemimages_detail.R.O.urls (Array)
	item.itemimages_detail.R.O.urls.0 (Object)
	item.itemimages_detail.R.O.urls.0.altimagetext (String)
	item.itemimages_detail.R.O.urls.0.url (String)
	item.itemimages_detail.V (Object)
	item.itemimages_detail.V.A (Object)
	item.itemimages_detail.V.A.urls (Array)
	item.itemimages_detail.V.A.urls.0 (Object)
	item.itemimages_detail.V.A.urls.0.altimagetext (String)
	item.itemimages_detail.V.A.urls.0.url (String)
	item.itemimages_detail.V.E (Object)
	item.itemimages_detail.V.E.urls (Array)
	item.itemimages_detail.V.E.urls.0 (Object)
	item.itemimages_detail.V.E.urls.0.altimagetext (String)
	item.itemimages_detail.V.E.urls.0.url (String)
	item.itemimages_detail.V.O (Object)
	item.itemimages_detail.V.O.urls (Array)
	item.itemimages_detail.V.O.urls.0 (Object)
	item.itemimages_detail.V.O.urls.0.altimagetext (String)
	item.itemimages_detail.V.O.urls.0.url (String)
	item.itemid (String)
	item.matrix_parent (Object)
	item.matrix_parent.isinactive (Boolean)
	item.matrix_parent.isinstock (Boolean)
	item.matrix_parent.isonline (Boolean)
	item.matrix_parent.matrixchilditems_detail (Array)
	item.matrix_parent.matrixchilditems_detail.0 (Object)
	item.matrix_parent.matrixchilditems_detail.0.isinstock (Boolean)
	item.matrix_parent.matrixchilditems_detail.0.minimumquantity (Number)
	item.matrix_parent.matrixchilditems_detail.0.ispurchasable (Boolean)
	item.matrix_parent.matrixchilditems_detail.0.stockdescription (String)
	item.matrix_parent.matrixchilditems_detail.0.isbackorderable (Boolean)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail (Object)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.onlinecustomerprice_formatted (String)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.onlinecustomerprice (Number)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule (Array)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0 (Object)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.maximumquantity (Number)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.minimumquantity (Number)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.price (Number)
	item.matrix_parent.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.price_formatted (String)
	item.matrix_parent.matrixchilditems_detail.0.custitem3 (String)
	item.matrix_parent.matrixchilditems_detail.0.internalid (Number)
	item.matrix_parent.matrixchilditems_detail.0.showoutofstockmessage (Boolean)
	item.matrix_parent.matrixchilditems_detail.0.outofstockbehavior (String)
	item.matrix_parent.matrixchilditems_detail.0.custitem4 (String)
	item.matrix_parent.matrixchilditems_detail.0.quantityavailable (undefined)
	item.matrix_parent.matrixchilditems_detail.0.outofstockmessage (String)
	item.matrix_parent.itemid (String)
	item.matrix_parent.minimumquantity (Number)
	item.matrix_parent.ispurchasable (Boolean)
	item.matrix_parent.stockdescription (String)
	item.matrix_parent.isbackorderable (Boolean)
	item.matrix_parent.itemimages_detail (Object)
	item.matrix_parent.itemimages_detail.A (Object)
	item.matrix_parent.itemimages_detail.A.A (Object)
	item.matrix_parent.itemimages_detail.A.A.urls (Array)
	item.matrix_parent.itemimages_detail.A.A.urls.0 (Object)
	item.matrix_parent.itemimages_detail.A.A.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.A.A.urls.0.url (String)
	item.matrix_parent.itemimages_detail.A.E (Object)
	item.matrix_parent.itemimages_detail.A.E.urls (Array)
	item.matrix_parent.itemimages_detail.A.E.urls.0 (Object)
	item.matrix_parent.itemimages_detail.A.E.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.A.E.urls.0.url (String)
	item.matrix_parent.itemimages_detail.A.O (Object)
	item.matrix_parent.itemimages_detail.A.O.urls (Array)
	item.matrix_parent.itemimages_detail.A.O.urls.0 (Object)
	item.matrix_parent.itemimages_detail.A.O.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.A.O.urls.0.url (String)
	item.matrix_parent.itemimages_detail.R (Object)
	item.matrix_parent.itemimages_detail.R.A (Object)
	item.matrix_parent.itemimages_detail.R.A.urls (Array)
	item.matrix_parent.itemimages_detail.R.A.urls.0 (Object)
	item.matrix_parent.itemimages_detail.R.A.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.R.A.urls.0.url (String)
	item.matrix_parent.itemimages_detail.R.E (Object)
	item.matrix_parent.itemimages_detail.R.E.urls (Array)
	item.matrix_parent.itemimages_detail.R.E.urls.0 (Object)
	item.matrix_parent.itemimages_detail.R.E.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.R.E.urls.0.url (String)
	item.matrix_parent.itemimages_detail.R.O (Object)
	item.matrix_parent.itemimages_detail.R.O.urls (Array)
	item.matrix_parent.itemimages_detail.R.O.urls.0 (Object)
	item.matrix_parent.itemimages_detail.R.O.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.R.O.urls.0.url (String)
	item.matrix_parent.itemimages_detail.V (Object)
	item.matrix_parent.itemimages_detail.V.A (Object)
	item.matrix_parent.itemimages_detail.V.A.urls (Array)
	item.matrix_parent.itemimages_detail.V.A.urls.0 (Object)
	item.matrix_parent.itemimages_detail.V.A.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.V.A.urls.0.url (String)
	item.matrix_parent.itemimages_detail.V.E (Object)
	item.matrix_parent.itemimages_detail.V.E.urls (Array)
	item.matrix_parent.itemimages_detail.V.E.urls.0 (Object)
	item.matrix_parent.itemimages_detail.V.E.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.V.E.urls.0.url (String)
	item.matrix_parent.itemimages_detail.V.O (Object)
	item.matrix_parent.itemimages_detail.V.O.urls (Array)
	item.matrix_parent.itemimages_detail.V.O.urls.0 (Object)
	item.matrix_parent.itemimages_detail.V.O.urls.0.altimagetext (String)
	item.matrix_parent.itemimages_detail.V.O.urls.0.url (String)
	item.matrix_parent.onlinecustomerprice_detail (Object)
	item.matrix_parent.onlinecustomerprice_detail.onlinecustomerprice_formatted (String)
	item.matrix_parent.onlinecustomerprice_detail.onlinecustomerprice (Number)
	item.matrix_parent.internalid (Number)
	item.matrix_parent.showoutofstockmessage (Boolean)
	item.matrix_parent.itemtype (String)
	item.matrix_parent.itemoptions_detail (Object)
	item.matrix_parent.itemoptions_detail.matrixtype (String)
	item.matrix_parent.itemoptions_detail.fields (Array)
	item.matrix_parent.itemoptions_detail.fields.0 (Object)
	item.matrix_parent.itemoptions_detail.fields.0.ismandatory (Boolean)
	item.matrix_parent.itemoptions_detail.fields.0.internalid (String)
	item.matrix_parent.itemoptions_detail.fields.0.ismatrixdimension (Boolean)
	item.matrix_parent.itemoptions_detail.fields.0.values (Array)
	item.matrix_parent.itemoptions_detail.fields.0.values.0 (Object)
	item.matrix_parent.itemoptions_detail.fields.0.values.0.label (String)
	item.matrix_parent.itemoptions_detail.fields.0.values.0.isAvailable (Boolean)
	item.matrix_parent.itemoptions_detail.fields.0.values.0.url (String)
	item.matrix_parent.itemoptions_detail.fields.0.label (String)
	item.matrix_parent.itemoptions_detail.fields.0.type (String)
	item.matrix_parent.itemoptions_detail.fields.0.sourcefrom (String)
	item.matrix_parent.outofstockmessage (String)
	item.matrix_parent.displayname (String)
	item.matrix_parent.storedisplayname2 (String)
	item.matrix_parent.pricelevel1 (Number)
	item.matrix_parent.pricelevel1_formatted (String)
	item.matrix_parent.urlcomponent (String)
	item.matrix_parent._optionsDetails (Object)
	item.matrix_parent._optionsDetails.matrixtype (String)
	item.matrix_parent._optionsDetails.fields (Array)
	item.matrix_parent._optionsDetails.fields.0 (Object)
	item.matrix_parent._optionsDetails.fields.0.ismandatory (Boolean)
	item.matrix_parent._optionsDetails.fields.0.internalid (String)
	item.matrix_parent._optionsDetails.fields.0.ismatrixdimension (Boolean)
	item.matrix_parent._optionsDetails.fields.0.values (Array)
	item.matrix_parent._optionsDetails.fields.0.values.0 (Object)
	item.matrix_parent._optionsDetails.fields.0.values.0.label (String)
	item.matrix_parent._optionsDetails.fields.0.values.0.isAvailable (Boolean)
	item.matrix_parent._optionsDetails.fields.0.values.0.url (String)
	item.matrix_parent._optionsDetails.fields.0.label (String)
	item.matrix_parent._optionsDetails.fields.0.type (String)
	item.matrix_parent._optionsDetails.fields.0.sourcefrom (String)
	item.matrix_parent._matrixParent (Object)
	item.matrix_parent._matrixParent.options (Array)
	item.matrix_parent._url (String)
	item.matrix_parent._matrixChilds (Array)
	item.matrix_parent._matrixChilds.0 (Object)
	item.matrix_parent._matrixChilds.0.isinstock (Boolean)
	item.matrix_parent._matrixChilds.0.minimumquantity (Number)
	item.matrix_parent._matrixChilds.0.ispurchasable (Boolean)
	item.matrix_parent._matrixChilds.0.stockdescription (String)
	item.matrix_parent._matrixChilds.0.isbackorderable (Boolean)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail (Object)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.onlinecustomerprice_formatted (String)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.onlinecustomerprice (Number)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.priceschedule (Array)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0 (Object)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.maximumquantity (Number)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.minimumquantity (Number)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.price (Number)
	item.matrix_parent._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.price_formatted (String)
	item.matrix_parent._matrixChilds.0.custitem3 (String)
	item.matrix_parent._matrixChilds.0.internalid (Number)
	item.matrix_parent._matrixChilds.0.showoutofstockmessage (Boolean)
	item.matrix_parent._matrixChilds.0.outofstockbehavior (String)
	item.matrix_parent._matrixChilds.0.custitem4 (String)
	item.matrix_parent._matrixChilds.0.quantityavailable (undefined)
	item.matrix_parent._matrixChilds.0.outofstockmessage (String)
	item.matrix_parent._matrixChilds.0.options (Array)
	item.matrix_parent._matrixChilds.0._matrixChilds (Array)
	item.matrix_parent._matrixChilds.0._priceDetails (Object)
	item.matrix_parent._matrixChilds.0._priceDetails.onlinecustomerprice_formatted (String)
	item.matrix_parent._matrixChilds.0._priceDetails.onlinecustomerprice (Number)
	item.matrix_parent._matrixChilds.0._priceDetails.priceschedule (Array)
	item.matrix_parent._matrixChilds.0._priceDetails.priceschedule.0 (Object)
	item.matrix_parent._matrixChilds.0._priceDetails.priceschedule.0.maximumquantity (Number)
	item.matrix_parent._matrixChilds.0._priceDetails.priceschedule.0.minimumquantity (Number)
	item.matrix_parent._matrixChilds.0._priceDetails.priceschedule.0.price (Number)
	item.matrix_parent._matrixChilds.0._priceDetails.priceschedule.0.price_formatted (String)
	item.matrix_parent._matrixChilds.0._comparePriceAgainst (Number)
	item.matrix_parent._matrixChilds.0._comparePriceAgainstFormated (String)
	item.matrix_parent.options (Array)
	item.matrix_parent.options.0 (Object)
	item.matrix_parent.options.0.cartOptionId (String)
	item.matrix_parent.options.0.itemOptionId (String)
	item.matrix_parent.options.0.label (String)
	item.matrix_parent.options.0.type (String)
	item.matrix_parent._priceDetails (Object)
	item.matrix_parent._priceDetails.onlinecustomerprice_formatted (String)
	item.matrix_parent._priceDetails.onlinecustomerprice (Number)
	item._matrixParent (Object)
	item._matrixParent.cid (String)
	item._matrixParent.attributes (Object)
	item._matrixParent.attributes.isinactive (Boolean)
	item._matrixParent.attributes.isinstock (Boolean)
	item._matrixParent.attributes.isonline (Boolean)
	item._matrixParent.attributes.matrixchilditems_detail (Array)
	item._matrixParent.attributes.matrixchilditems_detail.0 (Object)
	item._matrixParent.attributes.matrixchilditems_detail.0.isinstock (Boolean)
	item._matrixParent.attributes.matrixchilditems_detail.0.minimumquantity (Number)
	item._matrixParent.attributes.matrixchilditems_detail.0.ispurchasable (Boolean)
	item._matrixParent.attributes.matrixchilditems_detail.0.stockdescription (String)
	item._matrixParent.attributes.matrixchilditems_detail.0.isbackorderable (Boolean)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail (Object)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.onlinecustomerprice_formatted (String)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.onlinecustomerprice (Number)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule (Array)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0 (Object)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.maximumquantity (Number)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.minimumquantity (Number)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.price (Number)
	item._matrixParent.attributes.matrixchilditems_detail.0.onlinecustomerprice_detail.priceschedule.0.price_formatted (String)
	item._matrixParent.attributes.matrixchilditems_detail.0.custitem3 (String)
	item._matrixParent.attributes.matrixchilditems_detail.0.internalid (Number)
	item._matrixParent.attributes.matrixchilditems_detail.0.showoutofstockmessage (Boolean)
	item._matrixParent.attributes.matrixchilditems_detail.0.outofstockbehavior (String)
	item._matrixParent.attributes.matrixchilditems_detail.0.custitem4 (String)
	item._matrixParent.attributes.matrixchilditems_detail.0.quantityavailable (undefined)
	item._matrixParent.attributes.matrixchilditems_detail.0.outofstockmessage (String)
	item._matrixParent.attributes.itemid (String)
	item._matrixParent.attributes.minimumquantity (Number)
	item._matrixParent.attributes.ispurchasable (Boolean)
	item._matrixParent.attributes.stockdescription (String)
	item._matrixParent.attributes.isbackorderable (Boolean)
	item._matrixParent.attributes.itemimages_detail (Object)
	item._matrixParent.attributes.itemimages_detail.A (Object)
	item._matrixParent.attributes.itemimages_detail.A.A (Object)
	item._matrixParent.attributes.itemimages_detail.A.A.urls (Array)
	item._matrixParent.attributes.itemimages_detail.A.A.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.A.A.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.A.A.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.A.E (Object)
	item._matrixParent.attributes.itemimages_detail.A.E.urls (Array)
	item._matrixParent.attributes.itemimages_detail.A.E.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.A.E.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.A.E.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.A.O (Object)
	item._matrixParent.attributes.itemimages_detail.A.O.urls (Array)
	item._matrixParent.attributes.itemimages_detail.A.O.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.A.O.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.A.O.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.R (Object)
	item._matrixParent.attributes.itemimages_detail.R.A (Object)
	item._matrixParent.attributes.itemimages_detail.R.A.urls (Array)
	item._matrixParent.attributes.itemimages_detail.R.A.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.R.A.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.R.A.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.R.E (Object)
	item._matrixParent.attributes.itemimages_detail.R.E.urls (Array)
	item._matrixParent.attributes.itemimages_detail.R.E.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.R.E.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.R.E.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.R.O (Object)
	item._matrixParent.attributes.itemimages_detail.R.O.urls (Array)
	item._matrixParent.attributes.itemimages_detail.R.O.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.R.O.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.R.O.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.V (Object)
	item._matrixParent.attributes.itemimages_detail.V.A (Object)
	item._matrixParent.attributes.itemimages_detail.V.A.urls (Array)
	item._matrixParent.attributes.itemimages_detail.V.A.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.V.A.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.V.A.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.V.E (Object)
	item._matrixParent.attributes.itemimages_detail.V.E.urls (Array)
	item._matrixParent.attributes.itemimages_detail.V.E.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.V.E.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.V.E.urls.0.url (String)
	item._matrixParent.attributes.itemimages_detail.V.O (Object)
	item._matrixParent.attributes.itemimages_detail.V.O.urls (Array)
	item._matrixParent.attributes.itemimages_detail.V.O.urls.0 (Object)
	item._matrixParent.attributes.itemimages_detail.V.O.urls.0.altimagetext (String)
	item._matrixParent.attributes.itemimages_detail.V.O.urls.0.url (String)
	item._matrixParent.attributes.onlinecustomerprice_detail (Object)
	item._matrixParent.attributes.onlinecustomerprice_detail.onlinecustomerprice_formatted (String)
	item._matrixParent.attributes.onlinecustomerprice_detail.onlinecustomerprice (Number)
	item._matrixParent.attributes.internalid (Number)
	item._matrixParent.attributes.showoutofstockmessage (Boolean)
	item._matrixParent.attributes.itemtype (String)
	item._matrixParent.attributes.itemoptions_detail (Object)
	item._matrixParent.attributes.itemoptions_detail.matrixtype (String)
	item._matrixParent.attributes.itemoptions_detail.fields (Array)
	item._matrixParent.attributes.itemoptions_detail.fields.0 (Object)
	item._matrixParent.attributes.itemoptions_detail.fields.0.ismandatory (Boolean)
	item._matrixParent.attributes.itemoptions_detail.fields.0.internalid (String)
	item._matrixParent.attributes.itemoptions_detail.fields.0.ismatrixdimension (Boolean)
	item._matrixParent.attributes.itemoptions_detail.fields.0.values (Array)
	item._matrixParent.attributes.itemoptions_detail.fields.0.values.0 (Object)
	item._matrixParent.attributes.itemoptions_detail.fields.0.values.0.label (String)
	item._matrixParent.attributes.itemoptions_detail.fields.0.values.0.isAvailable (Boolean)
	item._matrixParent.attributes.itemoptions_detail.fields.0.values.0.url (String)
	item._matrixParent.attributes.itemoptions_detail.fields.0.label (String)
	item._matrixParent.attributes.itemoptions_detail.fields.0.type (String)
	item._matrixParent.attributes.itemoptions_detail.fields.0.sourcefrom (String)
	item._matrixParent.attributes.outofstockmessage (String)
	item._matrixParent.attributes.displayname (String)
	item._matrixParent.attributes.storedisplayname2 (String)
	item._matrixParent.attributes.pricelevel1 (Number)
	item._matrixParent.attributes.pricelevel1_formatted (String)
	item._matrixParent.attributes.urlcomponent (String)
	item._matrixParent.attributes._optionsDetails (Object)
	item._matrixParent.attributes._optionsDetails.matrixtype (String)
	item._matrixParent.attributes._optionsDetails.fields (Array)
	item._matrixParent.attributes._optionsDetails.fields.0 (Object)
	item._matrixParent.attributes._optionsDetails.fields.0.ismandatory (Boolean)
	item._matrixParent.attributes._optionsDetails.fields.0.internalid (String)
	item._matrixParent.attributes._optionsDetails.fields.0.ismatrixdimension (Boolean)
	item._matrixParent.attributes._optionsDetails.fields.0.values (Array)
	item._matrixParent.attributes._optionsDetails.fields.0.values.0 (Object)
	item._matrixParent.attributes._optionsDetails.fields.0.values.0.label (String)
	item._matrixParent.attributes._optionsDetails.fields.0.values.0.isAvailable (Boolean)
	item._matrixParent.attributes._optionsDetails.fields.0.values.0.url (String)
	item._matrixParent.attributes._optionsDetails.fields.0.label (String)
	item._matrixParent.attributes._optionsDetails.fields.0.type (String)
	item._matrixParent.attributes._optionsDetails.fields.0.sourcefrom (String)
	item._matrixParent.attributes._matrixParent (Object)
	item._matrixParent.attributes._matrixParent.options (Array)
	item._matrixParent.attributes._url (String)
	item._matrixParent.attributes._matrixChilds (Array)
	item._matrixParent.attributes._matrixChilds.0 (Object)
	item._matrixParent.attributes._matrixChilds.0.isinstock (Boolean)
	item._matrixParent.attributes._matrixChilds.0.minimumquantity (Number)
	item._matrixParent.attributes._matrixChilds.0.ispurchasable (Boolean)
	item._matrixParent.attributes._matrixChilds.0.stockdescription (String)
	item._matrixParent.attributes._matrixChilds.0.isbackorderable (Boolean)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail (Object)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.onlinecustomerprice_formatted (String)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.onlinecustomerprice (Number)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.priceschedule (Array)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0 (Object)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.maximumquantity (Number)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.minimumquantity (Number)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.price (Number)
	item._matrixParent.attributes._matrixChilds.0.onlinecustomerprice_detail.priceschedule.0.price_formatted (String)
	item._matrixParent.attributes._matrixChilds.0.custitem3 (String)
	item._matrixParent.attributes._matrixChilds.0.internalid (Number)
	item._matrixParent.attributes._matrixChilds.0.showoutofstockmessage (Boolean)
	item._matrixParent.attributes._matrixChilds.0.outofstockbehavior (String)
	item._matrixParent.attributes._matrixChilds.0.custitem4 (String)
	item._matrixParent.attributes._matrixChilds.0.quantityavailable (undefined)
	item._matrixParent.attributes._matrixChilds.0.outofstockmessage (String)
	item._matrixParent.attributes._matrixChilds.0.options (Array)
	item._matrixParent.attributes._matrixChilds.0._matrixChilds (Array)
	item._matrixParent.attributes._matrixChilds.0._priceDetails (Object)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.onlinecustomerprice_formatted (String)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.onlinecustomerprice (Number)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.priceschedule (Array)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.priceschedule.0 (Object)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.priceschedule.0.maximumquantity (Number)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.priceschedule.0.minimumquantity (Number)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.priceschedule.0.price (Number)
	item._matrixParent.attributes._matrixChilds.0._priceDetails.priceschedule.0.price_formatted (String)
	item._matrixParent.attributes._matrixChilds.0._comparePriceAgainst (Number)
	item._matrixParent.attributes._matrixChilds.0._comparePriceAgainstFormated (String)
	item._matrixParent.attributes.options (Array)
	item._matrixParent.attributes.options.0 (Object)
	item._matrixParent.attributes.options.0.cartOptionId (String)
	item._matrixParent.attributes.options.0.itemOptionId (String)
	item._matrixParent.attributes.options.0.label (String)
	item._matrixParent.attributes.options.0.type (String)
	item._matrixParent.attributes._priceDetails (Object)
	item._matrixParent.attributes._priceDetails.onlinecustomerprice_formatted (String)
	item._matrixParent.attributes._priceDetails.onlinecustomerprice (Number)
	item._matrixParent._changing (Boolean)
	item._matrixParent.changed (Object)
	item._matrixParent.changed.options (Array)
	item._matrixParent.changed.options.0 (Object)
	item._matrixParent.changed.options.0.cartOptionId (String)
	item._matrixParent.changed.options.0.itemOptionId (String)
	item._matrixParent.changed.options.0.label (String)
	item._matrixParent.changed.options.0.type (String)
	item._matrixParent.id (Number)
	item._matrixParent._pending (Boolean)
	item._matrixParent.searchApiMasterOptions (Object)
	item._matrixParent.searchApiMasterOptions.fieldset (String)
	item._matrixParent.searchApiMasterOptions.include (String)
	item._matrixParent.itemOptionsConfig (Array)
	item._matrixParent.itemOptionsConfig.0 (Object)
	item._matrixParent.itemOptionsConfig.0.cartOptionId (String)
	item._matrixParent.itemOptionsConfig.0.label (String)
	item._matrixParent.itemOptionsConfig.0.urlParameterName (String)
	item._matrixParent.itemOptionsConfig.0.colors (Object)
	item._matrixParent.itemOptionsConfig.0.colors.black (String)
	item._matrixParent.itemOptionsConfig.0.colors.gray (String)
	item._matrixParent.itemOptionsConfig.0.colors.grey (String)
	item._matrixParent.itemOptionsConfig.0.colors.white (String)
	item._matrixParent.itemOptionsConfig.0.colors.brown (String)
	item._matrixParent.itemOptionsConfig.0.colors.beige (String)
	item._matrixParent.itemOptionsConfig.0.colors.blue (String)
	item._matrixParent.itemOptionsConfig.0.colors.light-blue (String)
	item._matrixParent.itemOptionsConfig.0.colors.purple (String)
	item._matrixParent.itemOptionsConfig.0.colors.lilac (String)
	item._matrixParent.itemOptionsConfig.0.colors.red (String)
	item._matrixParent.itemOptionsConfig.0.colors.pink (String)
	item._matrixParent.itemOptionsConfig.0.colors.orange (String)
	item._matrixParent.itemOptionsConfig.0.colors.peach (String)
	item._matrixParent.itemOptionsConfig.0.colors.yellow (String)
	item._matrixParent.itemOptionsConfig.0.colors.light-yellow (String)
	item._matrixParent.itemOptionsConfig.0.colors.green (String)
	item._matrixParent.itemOptionsConfig.0.colors.lime (String)
	item._matrixParent.itemOptionsConfig.0.colors.teal (String)
	item._matrixParent.itemOptionsConfig.0.colors.aqua (String)
	item._matrixParent.itemOptionsConfig.0.colors.burgandy (String)
	item._matrixParent.itemOptionsConfig.0.colors.navy (String)
	item._matrixParent.itemOptionsConfig.0.index (Number)
	item._matrixParent.itemOptionsConfig.0.templateSelector (String)
	item._matrixParent.itemOptionsConfig.0.showSelectorInList (Boolean)
	item._matrixParent.itemOptionsConfig.0.templateFacetCell (String)
	item._matrixParent.itemOptionsConfig.0.templateSelected (String)
	item._matrixParent.itemOptionsConfig.0.useLabelsOnUrl (Boolean)
	item._matrixParent.itemOptionsConfig.0.templates (Object)
	item._matrixParent._keyMapping (Object)
	item._matrixParent._keyMapping._id (String)
	item._matrixParent._keyMapping._pageTitle (Array)
	item._matrixParent._keyMapping._pageTitle.0 (String)
	item._matrixParent._keyMapping._pageHeader (Array)
	item._matrixParent._keyMapping._pageHeader.0 (String)
	item._matrixParent._keyMapping._keywords (String)
	item._matrixParent._keyMapping._metaTags (String)
	item._matrixParent._keyMapping._matrixParent (String)
	item._matrixParent._keyMapping._matrixChilds (String)
	item._matrixParent._keyMapping._optionsDetails (String)
	item._matrixParent._keyMapping._relatedItems (String)
	item._matrixParent._keyMapping._relatedItemsDetail (String)
	item._matrixParent._keyMapping._correlatedItemsDetail (String)
	item._matrixParent._keyMapping._priceDetails (String)
	item._matrixParent._keyMapping._itemType (String)
	item._matrixParent._keyMapping._stock (String)
	item._matrixParent._keyMapping._isInStock (String)
	item._matrixParent._keyMapping._isPurchasable (String)
	item._matrixParent._keyMapping._isBackorderable (String)
	item._matrixParent._keyMapping._showOutOfStockMessage (String)
	item._matrixParent._keyMapping._stockDescription (String)
	item._matrixParent._keyMapping._isstorepickupallowed (String)
	item._matrixParent.cachedPosibleOptions (Array)
	item._matrixParent.cachedPosibleOptions.0 (Object)
	item._matrixParent.cachedPosibleOptions.0.cartOptionId (String)
	item._matrixParent.cachedPosibleOptions.0.itemOptionId (String)
	item._matrixParent.cachedPosibleOptions.0.label (String)
	item._matrixParent.cachedPosibleOptions.0.type (String)
	item._matrixParent.moduleName (String)
	item._matrixParent.validationError (undefined)
	item._matrixParent.idAttribute (String)
	item._matrixParent.options (Array)
	item._url (String)
	item._isPurchasable (Boolean)
	item._name (String)
	item._priceDetails (Object)
	item._priceDetails.onlinecustomerprice_formatted (String)
	item._priceDetails.onlinecustomerprice (Number)
	item._priceDetails.priceschedule (Array)
	item._priceDetails.priceschedule.0 (Object)
	item._priceDetails.priceschedule.0.maximumquantity (Number)
	item._priceDetails.priceschedule.0.minimumquantity (Number)
	item._priceDetails.priceschedule.0.price (Number)
	item._priceDetails.priceschedule.0.price_formatted (String)
	item._comparePriceAgainst (Number)
	item._comparePriceAgainstFormated (String)
	item._stock (undefined)
	item._isInStock (Boolean)
	item._outOfStockMessage (String)
	item._showOutOfStockMessage (Boolean)
	item._inStockMessage (String)
	item._showInStockMessage (Boolean)
	item._stockDescription (String)
	item._showStockDescription (Boolean)
	item._stockDescriptionClass (String)
	item._quantityavailableforstorepickup_detail (Array)
	item._showQuantityAvailable (Boolean)
	item._minimumQuantity (Number)
	item._sku (String)
	itemId (Number)
	linkAttributes (String)
	thumbnail (Object)
	thumbnail.altimagetext (String)
	thumbnail.url (String)
	isNavigable (Boolean)
	showCustomAlert (Boolean)
	customAlertType (String)
	showActionsView (Boolean)
	showSummaryView (Boolean)
	showAlert (Boolean)
	showGeneralClass (Boolean)
	generalClass (String)

----}}

