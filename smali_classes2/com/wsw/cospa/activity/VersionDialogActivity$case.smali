.class Lcom/wsw/cospa/activity/VersionDialogActivity$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/VersionDialogActivity;->break(Landroid/content/Context;Lcom/wsw/cospa/bean/AppUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/io/File;

.field public final synthetic for:Lcom/wsw/cospa/activity/VersionDialogActivity;

.field public final synthetic if:Landroid/content/Context;

.field public backup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/VersionDialogActivity;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->for:Lcom/wsw/cospa/activity/VersionDialogActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->do:Ljava/io/File;

    iput-object p3, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->if:Landroid/content/Context;

    iput-object p4, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->backup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()V
    .locals 0

    invoke-static {}, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->new()V

    return-void
.end method

.method private synthetic for(Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->for:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->case(Lcom/wsw/cospa/activity/VersionDialogActivity;Ljava/io/File;)V

    .line 2
    invoke-static {p2, p1}, Landroid/support/v4/z2;->public(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/activity/VersionDialogActivity$case;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->for(Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic new()V
    .locals 1

    const-string v0, "\u66f4\u65b0\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    .line 1
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->backup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->backup:Ljava/lang/String;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->for:Lcom/wsw/cospa/activity/VersionDialogActivity;

    iget-object v1, v1, Lcom/wsw/cospa/activity/VersionDialogActivity;->updateListener:Lcom/wsw/cospa/utils/download/ProgressResponseListener;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/wsw/cospa/utils/download/do;->if(Lcom/wsw/cospa/utils/download/ProgressResponseListener;)Lokhttp3/OkHttpClient;

    move-result-object v1

    goto :goto_client

    :cond_2
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    :goto_client
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u66f4\u65b0\u5305\u4e0b\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/VersionDialogActivity$case$new;

    invoke-direct {v1, v0}, Lcom/wsw/cospa/activity/VersionDialogActivity$case$new;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->do:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/wsw/cospa/utils/default;->abstract(Lokhttp3/ResponseBody;Ljava/io/File;)Z

    move-result p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file download was a success? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onResponse"

    invoke-static {v0, p2}, Landroid/support/v4/vv0;->do(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->do:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->do:Ljava/io/File;

    iget-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->if:Landroid/content/Context;

    new-instance v0, Lcom/wsw/cospa/activity/interface;

    invoke-direct {v0, p0, p1, p2}, Lcom/wsw/cospa/activity/interface;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity$case;Ljava/io/File;Landroid/content/Context;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/wsw/cospa/activity/protected;->do:Lcom/wsw/cospa/activity/protected;

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
