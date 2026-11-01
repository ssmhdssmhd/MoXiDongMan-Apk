.class public Lcom/wsw/cospa/widget/EditTextWithScrollView;
.super Lcom/google/android/material/textfield/TextInputEditText;
.source "SourceFile"


# instance fields
.field private mBottomFlag:Z

.field private mCanVerticalScroll:Z

.field private mOffsetHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mBottomFlag:Z

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/widget/EditTextWithScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mBottomFlag:Z

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/widget/EditTextWithScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mBottomFlag:Z

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/widget/EditTextWithScrollView;->init()V

    return-void
.end method

.method private canVerticalScroll()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mOffsetHeight:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-gtz v0, :cond_1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private getSuperHintHack()Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mHint"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mBottomFlag:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mBottomFlag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEIZU"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/wsw/cospa/widget/EditTextWithScrollView;->getSuperHintHack()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    invoke-super {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/EditTextWithScrollView;->canVerticalScroll()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mCanVerticalScroll:Z

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 2
    iget p1, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mOffsetHeight:I

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mBottomFlag:Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mCanVerticalScroll:Z

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/EditTextWithScrollView;->mBottomFlag:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_0
    return p1
.end method
