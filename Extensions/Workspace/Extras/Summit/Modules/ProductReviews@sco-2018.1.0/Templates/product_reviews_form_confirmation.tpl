<div class="product-reviews-form-confirmation">
    <h1>{{{header}}}</h1>
    <div class="product-reviews-form-confirmation-divider-desktop"></div>
    <div class="product-reviews-form-confirmation-divider"></div>
    <div class="product-reviews-form-confirmation-message">
		{{{confirmationMessage}}}
		<a href="{{itemUrl}}" class="product-reviews-form-confirmation-button-back">
			{{translate 'Back to '}} {{{productTitle}}}
		</a>
    </div>
    <div class="product-reviews-form-confirmation-item-cell">
        <div data-view="Facets.ItemCell" data-template="facets_item_cell_list"></div>
    </div>
    <div class="product-reviews-form-confirmation-content">
        <div class="product-reviews-form-confirmation-review-rating">
            <div data-view="Global.StarRatingAttribute" class="product-reviews-form-confirmation-rating-attribute"></div>
            <div data-view="Global.StarRating"></div>
        </div>
        <div class="product-reviews-form-confirmation-content-review">

            <h4>
                {{reviewTitle}}
            </h4>
            <p class="product-reviews-form-confirmation-content-username">
                {{translate 'By <span>$(0)</span>' reviewAuthor}}
                {{#if isReviewVerified}}
                    - <i class="product-reviews-form-confirmation-icon-sign"></i> {{translate 'verified purchaser'}}
                {{/if}}
            </p>
            <div class="product-reviews-form-confirmation-content-description">
                <p>
                    {{{reviewText}}}
                </p>
            </div>
        </div>
    </div>
</div>



{{!----
Use the following context variables when customizing this template:

	header (String)
	confirmationMessage (String)
	productTitle (String)
	itemUrl (String)
	reviewCreatedOn (String)
	reviewTitle (String)
	reviewAuthor (String)
	isReviewVerified (Boolean)
	reviewText (String)

----}}

