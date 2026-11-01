.class Lcom/wsw/cospa/activity/LocalPreviewActivity$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/LocalPreviewActivity;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Lcom/wsw/cospa/bean/RipeFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->A(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/bean/FileSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/FileSnapshot;->getParent()Lcom/wsw/cospa/bean/RipeFile;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->I(Ljava/io/File;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;

    move-result-object v0

    const-string v1, "pre chapter not find"

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->G(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/RipeFile;

    .line 8
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v5}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->w(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/bean/RipeFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/RipeFile;->getParentPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/RipeFile;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
