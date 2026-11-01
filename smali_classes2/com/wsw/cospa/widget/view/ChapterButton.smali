.class public Lcom/wsw/cospa/widget/view/ChapterButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# static fields
.field private static final NORMAL_STATE:[I

.field private static final SELECTED_STATE:[I


# instance fields
.field private accentColor:I

.field private download:Z

.field private normalColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, -0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/wsw/cospa/widget/view/ChapterButton;->NORMAL_STATE:[I

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/wsw/cospa/widget/view/ChapterButton;->SELECTED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/ChapterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/ChapterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/ChapterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/wsw/cospa/R$styleable;->ChapterButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, -0x1000000

    .line 2
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->accentColor:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, -0x7f7f80

    .line 4
    iput p1, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->normalColor:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 6
    iput-boolean v1, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->download:Z

    .line 7
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ChapterButton;->initColorDrawableState()V

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ChapterButton;->initDrawableState()V

    return-void
.end method

.method private initColorDrawableState()V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    sget-object v3, Lcom/wsw/cospa/widget/view/ChapterButton;->NORMAL_STATE:[I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/wsw/cospa/widget/view/ChapterButton;->SELECTED_STATE:[I

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [I

    iget v3, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->normalColor:I

    aput v3, v1, v4

    const/4 v3, -0x1

    aput v3, v1, v5

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private initDrawableState()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Lcom/wsw/cospa/widget/view/ViewUtils;->dpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->normalColor:I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Lcom/wsw/cospa/widget/view/ViewUtils;->dpToPixel(FLandroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 5
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/wsw/cospa/widget/view/ViewUtils;->dpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->accentColor:I

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/wsw/cospa/widget/view/ViewUtils;->dpToPixel(FLandroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 8
    iget v2, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->accentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 9
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 10
    sget-object v3, Lcom/wsw/cospa/widget/view/ChapterButton;->NORMAL_STATE:[I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 11
    sget-object v0, Lcom/wsw/cospa/widget/view/ChapterButton;->SELECTED_STATE:[I

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setDownload(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->download:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->download:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->accentColor:I

    goto :goto_0

    :cond_0
    const p1, -0x7f7f80

    :goto_0
    iput p1, p0, Lcom/wsw/cospa/widget/view/ChapterButton;->normalColor:I

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ChapterButton;->initColorDrawableState()V

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ChapterButton;->initDrawableState()V

    :cond_1
    return-void
.end method
