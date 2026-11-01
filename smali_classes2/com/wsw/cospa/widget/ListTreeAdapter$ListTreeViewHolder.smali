.class public Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/ListTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListTreeViewHolder"
.end annotation


# instance fields
.field public arrowIcon:Landroid/widget/ImageView;

.field public containerView:Landroid/view/ViewGroup;

.field public headSpace:Landroid/widget/Space;

.field public final synthetic this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ListTreeAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->containerView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;-><init>(Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
