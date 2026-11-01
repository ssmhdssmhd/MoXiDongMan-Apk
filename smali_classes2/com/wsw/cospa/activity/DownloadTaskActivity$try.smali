.class Lcom/wsw/cospa/activity/DownloadTaskActivity$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/DownloadTaskActivity;->interface(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ChapterListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->do:Ljava/util/List;

    iput-boolean p3, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->extends(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/service/DownloadService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->extends(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/service/DownloadService;

    move-result-object v2

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getTid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/wsw/cospa/service/DownloadService;->import(J)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-boolean v3, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->if:Z

    invoke-static {v2, v1, v3}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->abstract(Lcom/wsw/cospa/activity/DownloadTaskActivity;Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->e(Ljava/util/List;)V

    return-void
.end method
