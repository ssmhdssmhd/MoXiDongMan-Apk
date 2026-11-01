.class public Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTextViewBehavior"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLableHeight:I

.field private mSize:F

.field private mStartX:F

.field private mStartY:F

.field private mToolBar:Landroidx/appcompat/widget/Toolbar;

.field private mToolBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/high16 p2, -0x40800000    # -1.0f

    .line 11
    iput p2, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartY:F

    .line 12
    iput p2, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartX:F

    .line 13
    iput p2, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mSize:F

    const/4 p2, -0x1

    .line 14
    iput p2, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mLableHeight:I

    .line 15
    iput p2, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBarHeight:I

    .line 16
    iput-object p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701e1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mLableHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartY:F

    .line 3
    iput v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartX:F

    .line 4
    iput v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mSize:F

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mLableHeight:I

    .line 6
    iput v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBarHeight:I

    .line 7
    iput-object p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701e1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mLableHeight:I

    .line 9
    iput-object p2, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)Z
    .locals 0

    .line 2
    instance-of p1, p3, Lcom/google/android/material/appbar/AppBarLayout;

    return p1
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)Z
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/synchronized;->if()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBarHeight:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBarHeight:I

    .line 5
    :goto_0
    iget p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartY:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mLableHeight:I

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartY:F

    .line 7
    :cond_1
    iget p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartX:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/widget/TextView;->getX()F

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartX:F

    .line 9
    :cond_2
    iget p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mSize:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mSize:F

    .line 11
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBarHeight:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iget v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mToolBarHeight:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 13
    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {}, Landroid/support/v4/j10;->class()I

    move-result p3

    add-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    .line 14
    iget p3, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartY:F

    mul-float p3, p3, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    add-float/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setY(F)V

    .line 15
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    .line 16
    iget v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mStartX:F

    mul-float v0, v0, p1

    int-to-float p3, p3

    mul-float p3, p3, v1

    add-float/2addr v0, p3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setX(F)V

    .line 17
    iget-object p3, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/wsw/cospa/widget/behavior/CustomTextViewBehavior;->mSize:F

    mul-float p1, p1, v0

    add-float/2addr p1, v0

    invoke-static {p3, p1}, Landroid/support/v4/j10;->import(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    return p1
.end method
