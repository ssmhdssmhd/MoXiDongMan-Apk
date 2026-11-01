.class Lcom/wsw/cospa/activity/SearchComicActivity$case$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity$case;->onTextChanged(Ljava/lang/CharSequence;III)V
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
        "Lcom/wsw/cospa/bean/ComicInfoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity$case;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$if;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$if;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->extends(Lcom/wsw/cospa/activity/SearchComicActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/wsw/cospa/activity/SearchComicActivity$case$if$do;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$case$if$do;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity$case$if;)V

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
