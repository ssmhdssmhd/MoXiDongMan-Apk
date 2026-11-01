.class Lcom/wsw/cospa/fragment/LocalComicFragment$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/LocalComicFragment;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/RipeFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/LocalComicFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/LocalComicFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$do;->do:Lcom/wsw/cospa/fragment/LocalComicFragment;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/fragment/LocalComicFragment$do;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$do;->do:Lcom/wsw/cospa/fragment/LocalComicFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/LocalComicFragment;->goto(Lcom/wsw/cospa/fragment/LocalComicFragment;)Lcom/wsw/cospa/adapter/LocalComicAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/LocalComicAdapter;->refresh(Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$do;->do:Lcom/wsw/cospa/fragment/LocalComicFragment;

    invoke-virtual {p1}, Lcom/wsw/cospa/fragment/LocalComicFragment;->break()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$do;->do:Lcom/wsw/cospa/fragment/LocalComicFragment;

    invoke-virtual {p1}, Lcom/wsw/cospa/fragment/LocalComicFragment;->super()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
