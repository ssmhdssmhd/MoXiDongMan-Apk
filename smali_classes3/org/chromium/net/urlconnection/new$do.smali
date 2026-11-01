.class Lorg/chromium/net/urlconnection/new$do;
.super Lorg/chromium/net/return$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/urlconnection/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/urlconnection/new;


# direct methods
.method public constructor <init>(Lorg/chromium/net/urlconnection/new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-direct {p0}, Lorg/chromium/net/return$if;-><init>()V

    return-void
.end method

.method private else(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0, p1}, Lorg/chromium/net/urlconnection/new;->class(Lorg/chromium/net/urlconnection/new;Ljava/io/IOException;)Ljava/io/IOException;

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/new;->if(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/urlconnection/case;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/new;->if(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/urlconnection/case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/urlconnection/case;->for(Ljava/io/IOException;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/new;->new(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/urlconnection/else;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/new;->new(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/urlconnection/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/urlconnection/else;->case(Ljava/io/IOException;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/net/urlconnection/new;->for(Lorg/chromium/net/urlconnection/new;Z)Z

    .line 7
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/new;->try(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/urlconnection/this;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/urlconnection/this;->case()V

    return-void
.end method


# virtual methods
.method public case(Lorg/chromium/net/return;Lorg/chromium/net/static;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1, p2}, Lorg/chromium/net/urlconnection/new;->do(Lorg/chromium/net/urlconnection/new;Lorg/chromium/net/static;)Lorg/chromium/net/static;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/new$do;->else(Ljava/io/IOException;)V

    return-void
.end method

.method public do(Lorg/chromium/net/return;Lorg/chromium/net/static;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1, p2}, Lorg/chromium/net/urlconnection/new;->do(Lorg/chromium/net/urlconnection/new;Lorg/chromium/net/static;)Lorg/chromium/net/static;

    .line 2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "disconnect() called"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/new$do;->else(Ljava/io/IOException;)V

    return-void
.end method

.method public for(Lorg/chromium/net/return;Lorg/chromium/net/static;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1, p2}, Lorg/chromium/net/urlconnection/new;->do(Lorg/chromium/net/urlconnection/new;Lorg/chromium/net/static;)Lorg/chromium/net/static;

    .line 2
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/new;->try(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/urlconnection/this;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/urlconnection/this;->case()V

    return-void
.end method

.method public if(Lorg/chromium/net/return;Lorg/chromium/net/static;Landroid/support/v4/rs;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1, p2}, Lorg/chromium/net/urlconnection/new;->do(Lorg/chromium/net/urlconnection/new;Lorg/chromium/net/static;)Lorg/chromium/net/static;

    .line 2
    invoke-direct {p0, p3}, Lorg/chromium/net/urlconnection/new$do;->else(Ljava/io/IOException;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Exception cannot be null in onFailed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new(Lorg/chromium/net/return;Lorg/chromium/net/static;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/net/urlconnection/new;->case(Lorg/chromium/net/urlconnection/new;Z)Z

    .line 2
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/new;->else(Lorg/chromium/net/urlconnection/new;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 4
    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/new;->goto(Lorg/chromium/net/urlconnection/new;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {v0, p1}, Lorg/chromium/net/urlconnection/new;->this(Lorg/chromium/net/urlconnection/new;Ljava/net/URL;)Ljava/net/URL;

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/new;->break(Lorg/chromium/net/urlconnection/new;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 7
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/new;->catch(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/return;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/return;->if()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    :cond_1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1, p2}, Lorg/chromium/net/urlconnection/new;->do(Lorg/chromium/net/urlconnection/new;Lorg/chromium/net/static;)Lorg/chromium/net/static;

    .line 9
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/new;->catch(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/return;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/return;->do()V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/new$do;->else(Ljava/io/IOException;)V

    return-void
.end method

.method public try(Lorg/chromium/net/return;Lorg/chromium/net/static;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1, p2}, Lorg/chromium/net/urlconnection/new;->do(Lorg/chromium/net/urlconnection/new;Lorg/chromium/net/static;)Lorg/chromium/net/static;

    .line 2
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/chromium/net/urlconnection/new;->for(Lorg/chromium/net/urlconnection/new;Z)Z

    .line 3
    iget-object p1, p0, Lorg/chromium/net/urlconnection/new$do;->do:Lorg/chromium/net/urlconnection/new;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/new;->try(Lorg/chromium/net/urlconnection/new;)Lorg/chromium/net/urlconnection/this;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/urlconnection/this;->case()V

    return-void
.end method
