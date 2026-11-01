.class public Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;,
        Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$if;
    }
.end annotation


# static fields
.field public static final for:I = 0x0

.field public static final new:I = 0x1


# instance fields
.field private do:I

.field private if:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIGroupListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIGroupListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIGroupListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIGroupListView_separatorStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->do:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private break(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->for(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V

    return-void
.end method

.method private for(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->break(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V

    return-void
.end method

.method public static this(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public case(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;III)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p4}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->setOrientation(I)V

    .line 3
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p4, v1, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->setDetailText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, p5}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->setAccessoryType(I)V

    return-object v0
.end method

.method public else(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->try(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    move-result-object p1

    return-object p1
.end method

.method public getSectionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getSeparatorStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->do:I

    return v0
.end method

.method public goto(I)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    return-object p1
.end method

.method public new(I)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->try(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    move-result-object p1

    return-object p1
.end method

.method public setSeparatorStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->do:I

    return-void
.end method

.method public try(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;
    .locals 9

    if-nez p4, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_list_item_height_higher:I

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 2
    invoke-virtual/range {v2 .. v8}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->case(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;III)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_list_item_height:I

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 4
    invoke-virtual/range {v2 .. v8}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->case(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;III)Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    move-result-object p1

    return-object p1
.end method
