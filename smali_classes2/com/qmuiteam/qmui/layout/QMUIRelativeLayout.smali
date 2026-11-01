.class public Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;
.super Lcom/qmuiteam/qmui/alpha/QMUIAlphaRelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/layout/IQMUILayout;


# instance fields
.field private if:Lcom/qmuiteam/qmui/layout/do;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private do(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/layout/do;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/qmuiteam/qmui/layout/do;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaRelativeLayout;->setChangeAlphaWhenDisable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaRelativeLayout;->setChangeAlphaWhenPress(Z)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/do;->catch(Landroid/graphics/Canvas;II)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->break(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getHideRadiusSide()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getHideRadiusSide()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getRadius()I

    move-result v0

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getShadowAlpha()F

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getShadowColor()I

    move-result v0

    return v0
.end method

.method public getShadowElevation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getShadowElevation()I

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->final(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/layout/do;->const(I)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/qmuiteam/qmui/layout/do;->throw(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/qmuiteam/qmui/layout/do;->super(II)I

    move-result v1

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    .line 6
    :cond_0
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public onlyShowBottomDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowBottomDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onlyShowLeftDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowLeftDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onlyShowRightDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowRightDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onlyShowTopDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowTopDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBorderColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBorderWidth(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setBottomDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBottomDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setHeightLimit(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setHeightLimit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setHideRadiusSide(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setHideRadiusSide(I)V

    return-void
.end method

.method public setLeftDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setLeftDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setOuterNormalColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setOuterNormalColor(I)V

    return-void
.end method

.method public setOutlineExcludePadding(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setOutlineExcludePadding(Z)V

    return-void
.end method

.method public setOutlineInset(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->setOutlineInset(IIII)V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setRadius(I)V

    return-void
.end method

.method public setRadius(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/layout/do;->setRadius(II)V

    return-void
.end method

.method public setRadiusAndShadow(IIF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIIF)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIIF)V

    return-void
.end method

.method public setRightDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setRightDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShadowAlpha(F)V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShadowColor(I)V

    return-void
.end method

.method public setShadowElevation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShadowElevation(I)V

    return-void
.end method

.method public setShowBorderOnlyBeforeL(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShowBorderOnlyBeforeL(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setTopDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setTopDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setUseThemeGeneralShadowElevation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->setUseThemeGeneralShadowElevation()V

    return-void
.end method

.method public setWidthLimit(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setWidthLimit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateBottomDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateBottomDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public updateLeftDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateLeftDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public updateRightDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateRightDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public updateTopDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->if:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateTopDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
