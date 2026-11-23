.class public final Lcom/moxi/update/UpdateProbe;
.super Ljava/lang/Object;
.source "UpdateProbe.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moxi/update/UpdateProbe;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/moxi/update/UpdateProbe;->urls:[Ljava/lang/String;

    return-void
.end method

.method private static probe(Ljava/lang/String;)Z
    .locals 5

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v3, "Range"

    const-string v4, "bytes=0-1024"

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :check_206

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return v2

    :check_206
    const/16 v3, 0xce

    if-ne v1, v3, :fail

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return v2

    :fail
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :loop
    iget-object v3, p0, Lcom/moxi/update/UpdateProbe;->urls:[Ljava/lang/String;

    array-length v4, v3

    if-lt v2, v4, :probe_done

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/moxi/update/UpdateProbe;->probe(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :next

    move-object v1, v3

    goto :probe_done

    :next
    add-int/lit8 v2, v2, 0x1

    goto :loop

    :probe_done
    if-nez v1, :have_url

    iget-object v3, p0, Lcom/moxi/update/UpdateProbe;->urls:[Ljava/lang/String;

    array-length v4, v3

    if-lez v4, :have_url

    const/4 v4, 0x0

    aget-object v1, v3, v4

    :have_url
    new-instance v3, Lcom/moxi/update/UpdateEnqueue;

    iget-object v4, p0, Lcom/moxi/update/UpdateProbe;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/moxi/update/UpdateEnqueue;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method
