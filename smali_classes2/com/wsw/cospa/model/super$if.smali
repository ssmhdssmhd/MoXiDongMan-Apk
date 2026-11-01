.class Lcom/wsw/cospa/model/super$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/super;->super(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/InputStream;Ljava/lang/String;)Lio/reactivex/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DocumentFile;

.field public final synthetic for:Landroid/content/ContentResolver;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/super$if;->do:Lcom/wsw/cospa/utils/DocumentFile;

    iput-object p2, p0, Lcom/wsw/cospa/model/super$if;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/wsw/cospa/model/super$if;->for:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/wsw/cospa/model/super$if;->new:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/model/super$if;->do:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-static {}, Lcom/wsw/cospa/model/super;->try()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/model/super$if;->if:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/switch;->new(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/model/super$if;->for:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/wsw/cospa/model/super$if;->new:Ljava/io/InputStream;

    invoke-static {v1, v0, v2}, Lcom/wsw/cospa/utils/switch;->break(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/InputStream;)V

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
