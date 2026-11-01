.class Lcom/wsw/cospa/activity/DownloadTaskActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/DownloadTaskActivity;->continue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/DownloadTaskActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/wsw/cospa/service/DownloadService$if;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-virtual {p2}, Lcom/wsw/cospa/service/DownloadService$if;->do()Lcom/wsw/cospa/service/DownloadService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->finally(Lcom/wsw/cospa/activity/DownloadTaskActivity;Lcom/wsw/cospa/service/DownloadService;)Lcom/wsw/cospa/service/DownloadService;

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->extends(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/service/DownloadService;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->default(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/service/DownloadService;->throw(Ljava/util/List;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->default(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Task;

    .line 7
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {p1, v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throws(Lcom/wsw/cospa/activity/DownloadTaskActivity;Z)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throws(Lcom/wsw/cospa/activity/DownloadTaskActivity;Z)Z

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->switch(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
