.class public Lcom/wsw/cospa/widget/view/SoftInputRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mInsets:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SoftInputRelativeLayout;->mInsets:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SoftInputRelativeLayout;->mInsets:[I

    return-void
.end method


# virtual methods
.method public computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SoftInputRelativeLayout;->mInsets:[I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 3
    iget v3, p2, Landroid/graphics/Rect;->top:I

    aput v3, v0, v1

    const/4 v1, 0x2

    .line 4
    iget v3, p2, Landroid/graphics/Rect;->right:I

    aput v3, v0, v1

    .line 5
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 6
    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 7
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SoftInputRelativeLayout;->mInsets:[I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SoftInputRelativeLayout;->mInsets:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    aput v3, v0, v1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SoftInputRelativeLayout;->mInsets:[I

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    aput v3, v0, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 6
    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    return-object p1
.end method
