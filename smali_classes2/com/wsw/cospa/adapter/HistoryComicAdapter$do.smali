.class Lcom/wsw/cospa/adapter/HistoryComicAdapter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/HistoryComicAdapter;->final(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$do;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$do;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$do;->do:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->b(Ljava/util/List;)V

    return-void
.end method
