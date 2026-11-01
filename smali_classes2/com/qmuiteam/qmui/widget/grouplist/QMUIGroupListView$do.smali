.class public Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private break:I

.field private case:Z

.field private catch:I

.field private class:I

.field private do:Landroid/content/Context;

.field private else:I

.field private for:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

.field private goto:I

.field private if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

.field private new:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;",
            ">;"
        }
    .end annotation
.end field

.field private this:I

.field private try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->case:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->else:I

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->goto:I

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->this:I

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->break:I

    const/4 v0, -0x2

    .line 7
    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->catch:I

    .line 8
    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->class:I

    .line 9
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->do:Landroid/content/Context;

    .line 10
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->catch:I

    return p0
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->class:I

    return p0
.end method


# virtual methods
.method public break(II)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 0

    .line 1
    iput p2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->class:I

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->catch:I

    return-object p0
.end method

.method public case(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;
    .locals 3

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->do:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public catch(I)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->break:I

    return-object p0
.end method

.method public class(IIII)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->else:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->goto:I

    .line 3
    iput p3, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->this:I

    .line 4
    iput p4, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->break:I

    return-object p0
.end method

.method public const(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->else(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    return-object p0
.end method

.method public else(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->do:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final(Z)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->try:Z

    return-object p0
.end method

.method public for(Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;Landroid/view/View$OnClickListener;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new(Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    move-result-object p1

    return-object p1
.end method

.method public goto(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->for:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->for:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-static {p1, p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->if(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V

    return-void
.end method

.method public new(Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->getAccessoryType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p2, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$do;

    invoke-direct {p2, p0, p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$do;-><init>(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p0
.end method

.method public super(Z)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->case:Z

    return-object p0
.end method

.method public this(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->case(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->for:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    return-object p0
.end method

.method public try(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->try:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Section "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->getSectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->const(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->case:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 5
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->const(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->getSeparatorStyle()I

    move-result v0

    if-nez v0, :cond_6

    .line 9
    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->else:I

    if-nez v0, :cond_3

    .line 10
    sget v0, Lcom/qmuiteam/qmui/R$drawable;->qmui_s_list_item_bg_with_border_double:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->else:I

    .line 11
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->goto:I

    if-nez v0, :cond_4

    .line 12
    sget v0, Lcom/qmuiteam/qmui/R$drawable;->qmui_s_list_item_bg_with_border_double:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->goto:I

    .line 13
    :cond_4
    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->this:I

    if-nez v0, :cond_5

    .line 14
    sget v0, Lcom/qmuiteam/qmui/R$drawable;->qmui_s_list_item_bg_with_border_bottom:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->this:I

    .line 15
    :cond_5
    iget v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->break:I

    if-nez v0, :cond_6

    .line 16
    sget v0, Lcom/qmuiteam/qmui/R$drawable;->qmui_s_list_item_bg_with_border_bottom:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->break:I

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 18
    new-instance v1, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$if;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$if;-><init>(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_b

    .line 19
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    .line 20
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->getSeparatorStyle()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 21
    iget v4, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->else:I

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    .line 22
    iget v4, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->goto:I

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_9

    .line 23
    iget v4, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->this:I

    goto :goto_2

    .line 24
    :cond_9
    iget v4, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->break:I

    goto :goto_2

    .line 25
    :cond_a
    sget v4, Lcom/qmuiteam/qmui/R$drawable;->qmui_s_list_item_bg_with_border_none:I

    .line 26
    :goto_2
    invoke-virtual {v3, v1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->case(Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$LayoutParamConfig;)V

    .line 27
    invoke-static {v3, v4}, Lcom/qmuiteam/qmui/util/for;->throws(Landroid/view/View;I)V

    .line 28
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_b
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->for:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListSectionHeaderFooterView;

    if-eqz v0, :cond_c

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    :cond_c
    invoke-static {p1, p0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;->do(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V

    return-void
.end method
