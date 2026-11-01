.class Lcom/wsw/cospa/model/final$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/final;->throw(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Lio/reactivex/new;
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
        "Lcom/wsw/cospa/bean/ComicContentImgBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DocumentFile;

.field public final synthetic for:Lcom/wsw/cospa/bean/ChapterListBean;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicInfoBean;

.field public final synthetic new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/final$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    iput-object p2, p0, Lcom/wsw/cospa/model/final$do;->if:Lcom/wsw/cospa/bean/ComicInfoBean;

    iput-object p3, p0, Lcom/wsw/cospa/model/final$do;->for:Lcom/wsw/cospa/bean/ChapterListBean;

    iput-object p4, p0, Lcom/wsw/cospa/model/final$do;->new:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/final$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    iget-object v1, p0, Lcom/wsw/cospa/model/final$do;->if:Lcom/wsw/cospa/bean/ComicInfoBean;

    iget-object v2, p0, Lcom/wsw/cospa/model/final$do;->for:Lcom/wsw/cospa/bean/ChapterListBean;

    iget-object v3, p0, Lcom/wsw/cospa/model/final$do;->new:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/wsw/cospa/model/final;->this(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/wsw/cospa/model/final$do$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/model/final$do$do;-><init>(Lcom/wsw/cospa/model/final$do;)V

    new-instance v2, Lcom/wsw/cospa/model/final$do$if;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/model/final$do$if;-><init>(Lcom/wsw/cospa/model/final$do;)V

    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/utils/DocumentFile;->native(Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/model/final$do;->for:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/model/super;->else(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
