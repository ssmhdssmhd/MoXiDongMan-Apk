.class Lcom/wsw/cospa/activity/LocalPreviewActivity$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/LocalPreviewActivity;->v0(Lcom/wsw/cospa/bean/RipeFile;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/wsw/cospa/bean/FileSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iput-boolean p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->do:Z

    iput-boolean p3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/FileSnapshot;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/FileSnapshot;->getParent()Lcom/wsw/cospa/bean/RipeFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->updateChapterName(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->hideProgress()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->f(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->do:Z

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/FileSnapshot;->getParent()Lcom/wsw/cospa/bean/RipeFile;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->I(Ljava/io/File;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_6

    .line 12
    aget-object v3, p1, v1

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    new-instance v4, Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {v4}, Lcom/wsw/cospa/bean/RipeFile;-><init>()V

    .line 15
    invoke-virtual {v4, v3}, Lcom/wsw/cospa/bean/RipeFile;->setFile(Ljava/io/File;)V

    add-int/lit8 v3, v1, 0x1

    .line 16
    invoke-virtual {v4, v3}, Lcom/wsw/cospa/bean/RipeFile;->setIndexPape(I)V

    .line 17
    array-length v3, p1

    invoke-virtual {v4, v3}, Lcom/wsw/cospa/bean/RipeFile;->setMaxPage(I)V

    .line 18
    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/wsw/cospa/bean/RipeFile;->setParentName(Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/wsw/cospa/bean/RipeFile;->setParentPath(Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->x0()V

    goto :goto_2

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->x0()V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/FileSnapshot;->getFiles()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/RipeFile;

    .line 26
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->x0()V

    .line 29
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->l(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    move-result-object p1

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->if:Z

    invoke-virtual {p1, v2, v0, v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->continue(ZLjava/util/List;Z)V

    .line 30
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->do:Z

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "read_mode_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 32
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_3

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 34
    :goto_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v1, v1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->abstract:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->s0(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->z(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/support/v4/cq;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v1, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;->do(Lcom/wsw/cospa/bean/FileSnapshot;)V

    return-void
.end method
