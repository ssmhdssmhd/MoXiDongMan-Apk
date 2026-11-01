.class public Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field public static final case:I = 0x2

.field public static final else:I = 0x3

.field public static final try:I = 0x1


# instance fields
.field private do:I

.field private for:I

.field public if:I

.field private new:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    const/high16 p1, -0x80000000

    .line 13
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    .line 14
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p1, 0x2

    .line 16
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    const/high16 p1, -0x80000000

    .line 18
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    .line 19
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    const/high16 v2, -0x80000000

    .line 4
    iput v2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    .line 5
    iput v2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    .line 6
    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPriorityLinearLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPriorityLinearLayout_Layout_qmui_layout_priority:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    .line 8
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPriorityLinearLayout_Layout_qmui_layout_miniContentProtectionSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    const/high16 p1, -0x80000000

    .line 23
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    .line 24
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x2

    .line 26
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    const/high16 p1, -0x80000000

    .line 28
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    .line 29
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 p1, 0x2

    .line 31
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    const/high16 p1, -0x80000000

    .line 33
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    .line 34
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->for:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->new:I

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    return-void
.end method

.method public for(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    return-void
.end method

.method public if(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ltz p1, :cond_2

    return v0

    .line 3
    :cond_1
    iget p1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ltz p1, :cond_2

    return v0

    .line 4
    :cond_2
    iget p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do:I

    return p1
.end method
