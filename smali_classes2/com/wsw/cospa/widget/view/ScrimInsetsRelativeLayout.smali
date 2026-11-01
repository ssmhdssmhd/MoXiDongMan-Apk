.class public Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;
    }
.end annotation


# instance fields
.field private mConsumeInsets:Z

.field private mFitBottom:Z

.field private mFitLeft:Z

.field private mFitRight:Z

.field private mFitTop:Z

.field private mInsetForeground:Landroid/graphics/drawable/Drawable;

.field private mInsets:Landroid/graphics/Rect;

.field private mOnInsetsCallback:Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->lambda$init$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/R$styleable;->ScrimInsetsRelativeLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mConsumeInsets:Z

    const/4 p3, 0x5

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitTop:Z

    const/4 p3, 0x2

    .line 5
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitBottom:Z

    const/4 p3, 0x3

    .line 6
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitLeft:Z

    const/4 p3, 0x4

    .line 7
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitRight:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 10
    new-instance p1, Landroid/support/v4/ks1;

    invoke-direct {p1, p0}, Landroid/support/v4/ks1;-><init>(Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mConsumeInsets:Z

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mOnInsetsCallback:Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p1, v0}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->hasSystemWindowInsets()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 10
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 11
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public applyWindowInsets(Landroid/graphics/Rect;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 6
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    iget-boolean v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitTop:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_0
    iget-boolean v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitBottom:Z

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 14
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    :cond_1
    iget-boolean v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitLeft:Z

    if-eqz v3, :cond_2

    .line 16
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    :cond_2
    iget-boolean v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mFitRight:Z

    if-eqz v3, :cond_3

    .line 20
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    invoke-virtual {v3, v5, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public getWindowInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mOnInsetsCallback:Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mConsumeInsets:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setOnInsetsCallback(Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->mOnInsetsCallback:Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout$OnInsetsCallback;

    return-void
.end method
