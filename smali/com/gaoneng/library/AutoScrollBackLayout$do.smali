.class Lcom/gaoneng/library/AutoScrollBackLayout$do;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaoneng/library/AutoScrollBackLayout;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/gaoneng/library/AutoScrollBackLayout;


# direct methods
.method public constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$do;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$do;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$do;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout$do;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p2}, Lcom/gaoneng/library/AutoScrollBackLayout;->do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout$do;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p2}, Lcom/gaoneng/library/AutoScrollBackLayout;->do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v0}, Lcom/gaoneng/library/AutoScrollBackLayout$new;->do(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
