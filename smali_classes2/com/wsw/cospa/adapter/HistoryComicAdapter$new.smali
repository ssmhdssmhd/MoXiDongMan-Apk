.class Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/HistoryComicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(I)V
    .locals 0

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-static {p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->try(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->try(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/HistoryComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/HistoryComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->transient(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-static {p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->try(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method
