.class public Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# static fields
.field public static final case:I = 0x2

.field private static final for:F = 0.5f

.field public static final new:I = 0x0

.field public static final try:I = 0x1


# instance fields
.field public do:I

.field public if:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 10
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 13
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    .line 4
    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_Layout_qmui_layout_collapseMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    .line 6
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_Layout_qmui_layout_collapseParallaxMultiplier:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->new(F)V

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 16
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 19
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 22
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    return v0
.end method

.method public for(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    return-void
.end method

.method public if()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    return v0
.end method

.method public new(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    return-void
.end method
