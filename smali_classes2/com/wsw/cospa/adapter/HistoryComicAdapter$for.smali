.class Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->new(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->new(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;->onCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
