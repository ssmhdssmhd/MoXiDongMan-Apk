.class Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->final(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->static(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->extends()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0, v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->s(IZZ)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;->onTabClick(I)V

    :cond_3
    :goto_1
    return-void
.end method
