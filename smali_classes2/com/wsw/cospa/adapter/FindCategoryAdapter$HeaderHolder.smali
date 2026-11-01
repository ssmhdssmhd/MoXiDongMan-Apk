.class public Lcom/wsw/cospa/adapter/FindCategoryAdapter$HeaderHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/FindCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderHolder"
.end annotation


# instance fields
.field public do:Landroid/widget/TextView;

.field public final synthetic if:Lcom/wsw/cospa/adapter/FindCategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/FindCategoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter$HeaderHolder;->if:Lcom/wsw/cospa/adapter/FindCategoryAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/FindCategoryAdapter$HeaderHolder;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0904b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter$HeaderHolder;->do:Landroid/widget/TextView;

    return-void
.end method
