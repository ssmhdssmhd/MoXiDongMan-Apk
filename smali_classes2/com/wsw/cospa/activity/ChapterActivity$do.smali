.class Lcom/wsw/cospa/activity/ChapterActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ChapterActivity;->default(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/ArrayList<",
        "Lcom/wsw/cospa/bean/Task;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ChapterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$do;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    new-instance v1, Landroid/support/v4/gp1;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterActivity$do;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/ChapterActivity;->static(Lcom/wsw/cospa/activity/ChapterActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/16 v3, 0x17

    invoke-direct {v1, v3, v2}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ep1;->for(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity$do;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->strictfp(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/activity/ChapterActivity;->switch()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ChapterActivity$do;->do(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity$do;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
