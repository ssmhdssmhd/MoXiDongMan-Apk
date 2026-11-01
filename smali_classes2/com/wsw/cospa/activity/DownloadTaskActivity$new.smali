.class Lcom/wsw/cospa/activity/DownloadTaskActivity$new;
.super Landroid/support/v4/bz1;
.source "SourceFile"


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
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ChapterListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;ZLjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iput-boolean p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->do:Z

    iput-object p3, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->if:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->do:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/CartoonApplication;->new()Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->package(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    .line 4
    invoke-static {v1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->package(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/wsw/cospa/model/final;->case(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->package(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    new-instance v1, Landroid/support/v4/gp1;

    const/16 v2, 0x29

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ep1;->for(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/CartoonApplication;->new()Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->package(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->if:Ljava/util/List;

    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    .line 9
    invoke-static {v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->package(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/wsw/cospa/model/final;->else(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/util/List;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;->for:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->private(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Landroid/support/v4/xh1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
