.class public Lcom/wsw/cospa/model/super;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Ljava/lang/String; = "download"

.field private static for:Ljava/lang/String; = "backup"

.field private static if:Ljava/lang/String; = "picture"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static break(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Lio/reactivex/ObservableEmitter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wsw/cospa/utils/switch;->new(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "\u6b63\u5728\u79fb\u52a8 %s..."

    invoke-static {v3, v2}, Landroid/support/v4/l22;->case(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/switch;->this(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public static synthetic case(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/model/super;->catch(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static catch(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "\u6b63\u5728\u5220\u9664 %s"

    invoke-static {v0, p1}, Landroid/support/v4/l22;->case(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->try()Z

    :cond_0
    return-void
.end method

.method public static class(Landroid/content/Context;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1

    if-nez p1, :cond_2

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p0

    const-string p1, "CUSTOM_DOWNLOAD_PATH_KEY"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p1, Ljava/io/File;

    sget-object p0, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/wsw/cospa/utils/DocumentFile;->goto(Ljava/io/File;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "content"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;->break(Landroid/content/Context;Landroid/net/Uri;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "file"

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wsw/cospa/utils/DocumentFile;->goto(Ljava/io/File;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 15
    invoke-static {p0}, Lcom/wsw/cospa/utils/DocumentFile;->goto(Ljava/io/File;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    invoke-static {p0}, Lcom/wsw/cospa/utils/DocumentFile;->goto(Ljava/io/File;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method private static const(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "primary:Cimoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/model/super;->const(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)Z

    move-result p0

    return p0
.end method

.method public static else(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/utils/DocumentFile;

    .line 3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    :try_start_0
    invoke-virtual {v1}, Lcom/wsw/cospa/utils/DocumentFile;->static()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    .line 8
    new-instance v2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-direct {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setImgurl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIndexPape(I)V

    .line 11
    invoke-virtual {v2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setMaxPage(I)V

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static final(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/super$do;

    invoke-direct {v0, p2, p1, p0}, Lcom/wsw/cospa/model/super$do;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic for(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/model/super;->this(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)Z

    move-result p0

    return p0
.end method

.method private static goto(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Lio/reactivex/ObservableEmitter;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {p0, v3, p2, p3}, Lcom/wsw/cospa/model/super;->goto(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Lio/reactivex/ObservableEmitter;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 6
    :cond_0
    invoke-static {p0, v3, p2, p3}, Lcom/wsw/cospa/model/super;->break(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Lio/reactivex/ObservableEmitter;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic if()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/super;->for:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic new()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/super;->do:Ljava/lang/String;

    return-object v0
.end method

.method public static super(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/InputStream;Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/super$if;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/wsw/cospa/model/super$if;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/InputStream;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private static this(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Lcom/wsw/cospa/utils/DocumentFile;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p0, p1, p2, p4}, Lcom/wsw/cospa/model/super;->goto(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Lio/reactivex/ObservableEmitter;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic try()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/super;->if:Ljava/lang/String;

    return-object v0
.end method
