.class Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/HistoryComicAdapter;->class(Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

.field public final synthetic if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->for(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Lcom/wsw/cospa/listener/OnLongItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->for(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Lcom/wsw/cospa/listener/OnLongItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/wsw/cospa/listener/OnLongItemClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
