.class Lorg/chromium/net/urlconnection/if$if;
.super Lorg/chromium/net/public;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/urlconnection/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/urlconnection/if;


# direct methods
.method private constructor <init>(Lorg/chromium/net/urlconnection/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-direct {p0}, Lorg/chromium/net/public;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/urlconnection/if;Lorg/chromium/net/urlconnection/if$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/if$if;-><init>(Lorg/chromium/net/urlconnection/if;)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public for(Landroid/support/v4/yc2;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed Http body"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/support/v4/yc2;->for(Ljava/lang/Exception;)V

    return-void
.end method

.method public if(Landroid/support/v4/yc2;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3
    iget-object p2, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object p2, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/if;->goto(Lorg/chromium/net/urlconnection/if;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/yc2;->if(Z)V

    .line 5
    iget-object p1, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/if;->goto(Lorg/chromium/net/urlconnection/if;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/if;->this(Lorg/chromium/net/urlconnection/if;)Lorg/chromium/net/urlconnection/this;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/urlconnection/this;->case()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 8
    iget-object v1, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    iget-object v1, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p2, p0, Lorg/chromium/net/urlconnection/if$if;->do:Lorg/chromium/net/urlconnection/if;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/if;->else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroid/support/v4/yc2;->if(Z)V

    :cond_1
    :goto_0
    return-void
.end method
