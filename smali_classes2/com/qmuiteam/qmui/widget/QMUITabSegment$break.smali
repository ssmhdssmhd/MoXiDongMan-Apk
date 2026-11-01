.class public Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;
.super Lcom/qmuiteam/qmui/widget/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "break"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/do<",
        "Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;",
        "Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    .line 2
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/do;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public class(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;I)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->try(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/widget/TextView;Z)V

    .line 3
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    sget v2, Lcom/qmuiteam/qmui/R$id;->qmui_view_can_not_cache_tag:I

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2, v5}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 8
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->const(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->super()I

    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x9

    and-int/lit8 v6, v1, 0x3

    const/4 v7, 0x3

    const/4 v8, -0x1

    if-ne v6, v7, :cond_3

    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 12
    :goto_2
    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xe

    and-int/lit8 v6, v1, 0x11

    const/16 v7, 0x11

    if-ne v6, v7, :cond_4

    const/4 v6, -0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 13
    :goto_3
    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xb

    const/4 v6, 0x5

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    .line 14
    :goto_4
    invoke-virtual {v2, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->switch()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->super(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->try(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v0

    if-ne v0, p3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p2, p1, v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->static:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public const(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;
    .locals 2

    .line 1
    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic if(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    check-cast p2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->class(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;I)V

    return-void
.end method

.method public bridge synthetic new(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;->const(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    move-result-object p1

    return-object p1
.end method
