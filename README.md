#HCViews

HCViews is a (currently small) collection of convenient views.

Currently there are `HCBlockView` and `HCClippingView`.


##HCBlockView

This view takes a block in order to implement `-drawRect:`. The context is saved before the block is executed and restored afterwards.


##HCClippingView

This view takes a UIBezierPath to clip its shape and that of its subviews to non-rectangular shapes.

##HCChevronView

An easy way to use have a `UITableViewCellAccessoryDisclosureIndicator` in custom colours.

To create an instance use `+chevronViewWithColor:highlightedColor:`, this can then be assigned to the cell's `accessoryView`.

    cell.accessoryView = [HCChevronView chevronViewWithColor:[UIColor redColor]
                                            highlightedColor:[UIColor greenColor]];

You can also use the UI Appearance Proxy to set the `color` and `highlightedColor`.

##UIAlertView (HCContext)

Adds a `context` property to `UIAlertView`. This allows an object to be associated with a `UIAlertView` to allow the delegate to perform the appropriate action.

This avoids having to have a property on the view controller or having to assign arbitrary numbers to the alert view's tag.