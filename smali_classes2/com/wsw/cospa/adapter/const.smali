.class public final synthetic Lcom/wsw/cospa/adapter/const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

.field public final synthetic if:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/const;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/const;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/wsw/cospa/adapter/const;->do:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/const;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->if(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;Landroid/view/View;)V

    return-void
.end method
