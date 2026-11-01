.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomGridSheetBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$try;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$OnSheetItemClickListener;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$new;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;
    }
.end annotation


# static fields
.field public static final const:I = 0x0

.field public static final final:I = 0x1


# instance fields
.field private break:Z

.field private case:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$OnSheetItemClickListener;

.field private catch:Ljava/lang/CharSequence;

.field private class:Landroid/view/View$OnClickListener;

.field private do:Landroid/content/Context;

.field private else:Landroid/view/ViewGroup;

.field private for:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Landroid/widget/TextView;

.field private if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

.field private new:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private this:Landroid/graphics/Typeface;

.field private try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->try:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->this:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->break:Z

    .line 5
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->catch:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->class:Landroid/view/View$OnClickListener;

    .line 7
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->do:Landroid/content/Context;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->for:Landroid/util/SparseArray;

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new:Landroid/util/SparseArray;

    return-void
.end method

.method private catch(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->super()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->throw()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->import()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    .line 4
    sget v2, Lcom/qmuiteam/qmui/R$id;->bottom_sheet_button_container:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->else:Landroid/view/ViewGroup;

    .line 5
    sget v2, Lcom/qmuiteam/qmui/R$id;->bottom_sheet_close_button:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->goto:Landroid/widget/TextView;

    .line 6
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->for:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/ih1;->super(Landroid/content/Context;)I

    move-result v3

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/ih1;->final(Landroid/content/Context;)I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 9
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->class(IIII)I

    move-result v8

    .line 10
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->for:Landroid/util/SparseArray;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->goto(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;Landroid/util/SparseArray;Landroid/widget/LinearLayout;II)V

    .line 11
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new:Landroid/util/SparseArray;

    const/4 v2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v9

    move v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->goto(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;Landroid/util/SparseArray;Landroid/widget/LinearLayout;II)V

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->for:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_1
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x8

    if-nez p1, :cond_3

    .line 14
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    .line 16
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 17
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    .line 18
    invoke-virtual {v1, p1, v2, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19
    :cond_4
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->else:Landroid/view/ViewGroup;

    if-eqz p1, :cond_a

    .line 21
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->break:Z

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    .line 24
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 26
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    .line 27
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    :goto_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->this:Landroid/graphics/Typeface;

    if-eqz p1, :cond_7

    .line 29
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->goto:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->catch:Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    .line 31
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->goto:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->class:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_9

    .line 33
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->goto:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 34
    :cond_9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->goto:Landroid/widget/TextView;

    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$for;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$for;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_4
    return-object v0
.end method

.method private class(IIII)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->try:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->do:Landroid/content/Context;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_bottom_sheet_grid_item_mini_width:I

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->try:I

    :cond_0
    sub-int/2addr p1, p3

    sub-int p3, p1, p4

    .line 3
    iget p4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->try:I

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    mul-int v0, p2, p4

    sub-int v0, p3, v0

    if-lez v0, :cond_1

    if-ge v0, p4, :cond_1

    .line 4
    div-int p4, p3, p4

    .line 5
    div-int p4, p3, p4

    :cond_1
    mul-int p2, p2, p4

    if-le p2, p3, :cond_2

    .line 6
    div-int p2, p1, p4

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    div-float/2addr p1, p2

    float-to-int p4, p1

    :cond_2
    return p4
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    return-object p0
.end method

.method private goto(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;Landroid/util/SparseArray;Landroid/widget/LinearLayout;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;",
            "Landroid/util/SparseArray<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->while()I

    move-result v2

    invoke-interface {v1, p1, v2, p5, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;->create(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->switch(Landroid/view/View;I)V

    .line 4
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private switch(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    :goto_0
    const/16 p2, 0x30

    .line 6
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-void
.end method


# virtual methods
.method public break(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;
    .locals 4

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->do:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    .line 2
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->catch(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    return-object p1
.end method

.method public case(Landroid/view/View;I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$if;

    invoke-direct {v1, p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$if;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;Landroid/view/View;)V

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->for:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$do;

    invoke-direct {v1, p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;Landroid/view/View;)V

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public const(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Object;I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->final(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Object;ILandroid/graphics/Typeface;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;

    move-result-object p1

    return-object p1
.end method

.method public else(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->for:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Object;ILandroid/graphics/Typeface;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;
    .locals 7

    .line 1
    new-instance v6, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$new;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$new;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Object;ILandroid/graphics/Typeface;)V

    return-object v6
.end method

.method public for(ILjava/lang/CharSequence;Ljava/lang/Object;I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new(ILjava/lang/CharSequence;Ljava/lang/Object;II)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public if(ILjava/lang/CharSequence;I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->new(ILjava/lang/CharSequence;Ljava/lang/Object;II)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public import()I
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$id;->bottom_sheet_second_linear_layout:I

    return v0
.end method

.method public native(Landroid/graphics/Typeface;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->this:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public new(ILjava/lang/CharSequence;Ljava/lang/Object;II)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->try(ILjava/lang/CharSequence;Ljava/lang/Object;IILandroid/graphics/Typeface;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->case:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$OnSheetItemClickListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    invoke-interface {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$OnSheetItemClickListener;->onClick(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public public(Landroid/view/View$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->class:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public return(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->catch:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->break:Z

    return-object p0
.end method

.method public super()I
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$layout;->qmui_bottom_sheet_grid:I

    return v0
.end method

.method public this()Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$style;->QMUI_BottomSheet:I

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->break(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    move-result-object v0

    return-object v0
.end method

.method public throw()I
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$id;->bottom_sheet_first_linear_layout:I

    return v0
.end method

.method public throws(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$OnSheetItemClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->case:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$OnSheetItemClickListener;

    return-object p0
.end method

.method public try(ILjava/lang/CharSequence;Ljava/lang/Object;IILandroid/graphics/Typeface;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->do:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move-object v6, p6

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->final(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Object;ILandroid/graphics/Typeface;)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->else(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public while()I
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$layout;->qmui_bottom_sheet_grid_item:I

    return v0
.end method
