.class Lcom/wsw/cospa/utils/this$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/this;->case(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/utils/SaveImageCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/SaveImageCall;

.field public final synthetic for:Landroid/content/Context;

.field public final synthetic if:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/SaveImageCall;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/this$if;->do:Lcom/wsw/cospa/utils/SaveImageCall;

    iput-object p2, p0, Lcom/wsw/cospa/utils/this$if;->if:Ljava/io/File;

    iput-object p3, p0, Lcom/wsw/cospa/utils/this$if;->for:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic case(Lcom/wsw/cospa/utils/SaveImageCall;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/SaveImageCall;->onFault()V

    :cond_0
    return-void
.end method

.method public static synthetic do(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/this$if;->new(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/utils/SaveImageCall;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/this$if;->try(Lcom/wsw/cospa/utils/SaveImageCall;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/utils/SaveImageCall;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/this$if;->case(Lcom/wsw/cospa/utils/SaveImageCall;)V

    return-void
.end method

.method private static synthetic new(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic try(Lcom/wsw/cospa/utils/SaveImageCall;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/SaveImageCall;->onSucce()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/wsw/cospa/utils/this$if$do;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/utils/this$if$do;-><init>(Lcom/wsw/cospa/utils/this$if;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/utils/this$if;->if:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/wsw/cospa/utils/this;->const(Lokhttp3/ResponseBody;Ljava/io/File;)Z

    move-result p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file download was a success? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "_data"

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/utils/this$if;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string v0, "image/jpeg"

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/utils/this$if;->for:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/utils/this$if;->for:Landroid/content/Context;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wsw/cospa/utils/this$if;->if:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wsw/cospa/utils/this$if;->for:Landroid/content/Context;

    new-instance v2, Lcom/wsw/cospa/utils/break;

    invoke-direct {v2, v1}, Lcom/wsw/cospa/utils/break;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2, v0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/utils/this$if;->if:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/utils/this$if;->for:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p2, p0, Lcom/wsw/cospa/utils/this$if;->do:Lcom/wsw/cospa/utils/SaveImageCall;

    new-instance v0, Lcom/wsw/cospa/utils/class;

    invoke-direct {v0, p2}, Lcom/wsw/cospa/utils/class;-><init>(Lcom/wsw/cospa/utils/SaveImageCall;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 14
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p2, p0, Lcom/wsw/cospa/utils/this$if;->do:Lcom/wsw/cospa/utils/SaveImageCall;

    new-instance v0, Lcom/wsw/cospa/utils/catch;

    invoke-direct {v0, p2}, Lcom/wsw/cospa/utils/catch;-><init>(Lcom/wsw/cospa/utils/SaveImageCall;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
