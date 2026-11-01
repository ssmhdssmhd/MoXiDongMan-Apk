.class Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/FindComicAdaprter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FindViewHolder"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/FindComicAdaprter;

.field public tvSourceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b4
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/FindComicAdaprter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;->do:Lcom/wsw/cospa/adapter/FindComicAdaprter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
