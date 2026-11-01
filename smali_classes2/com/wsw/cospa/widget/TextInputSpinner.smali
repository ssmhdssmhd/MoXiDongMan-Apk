.class public Lcom/wsw/cospa/widget/TextInputSpinner;
.super Lcom/google/android/material/textfield/TextInputEditText;
.source "SourceFile"


# instance fields
.field public mEntities:[Ljava/lang/CharSequence;

.field public mPopup:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/TextInputSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/TextInputSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/TextInputSpinner;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/widget/TextInputSpinner;->lambda$onTouchEvent$1()V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/widget/TextInputSpinner;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/widget/TextInputSpinner;->lambda$init$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    .line 7
    sget-object v1, Lcom/wsw/cospa/R$styleable;->TextInputSpinner:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mEntities:[Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow;

    const v2, 0x7f120018

    invoke-direct {v1, p1, p2, p3, v2}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    .line 11
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object p3, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mEntities:[Ljava/lang/CharSequence;

    const v2, 0x7f0c0114

    invoke-direct {p2, p1, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance p3, Landroid/support/v4/f62;

    invoke-direct {p3, p0}, Landroid/support/v4/f62;-><init>(Lcom/wsw/cospa/widget/TextInputSpinner;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p1, p3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    neg-int p3, p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p1, p3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/TextInputSpinner;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/wsw/cospa/widget/TextInputSpinner;->setSelection(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/support/v4/g62;

    invoke-direct {p1, p0}, Landroid/support/v4/g62;-><init>(Lcom/wsw/cospa/widget/TextInputSpinner;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/TextInputSpinner;->mEntities:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
