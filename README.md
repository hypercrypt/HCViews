HCViews
=======

HCViews is a (currently small) collection of convenient views.

Currently there are `HCBlockView` and `HCClippingView`.


`HCBlockView`

This view takes a block in order to implement `-drawRect:`. The context is saved before the block is executed and restored afterwards.


`HCClippingView`

This view takes a UIBezierPath to clip its shape and that of its subviews to non-rectangular shapes.
