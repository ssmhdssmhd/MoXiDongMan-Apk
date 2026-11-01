.class Lorg/chromium/net/urlconnection/do$if;
.super Lorg/chromium/net/public;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/urlconnection/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/urlconnection/do;


# direct methods
.method private constructor <init>(Lorg/chromium/net/urlconnection/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-direct {p0}, Lorg/chromium/net/public;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/urlconnection/do;Lorg/chromium/net/urlconnection/do$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/do$if;-><init>(Lorg/chromium/net/urlconnection/do;)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/do;->else(Lorg/chromium/net/urlconnection/do;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/do;->goto(Lorg/chromium/net/urlconnection/do;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/do;->else(Lorg/chromium/net/urlconnection/do;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public for(Landroid/support/v4/yc2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/yc2;->new()V

    return-void
.end method

.method public if(Landroid/support/v4/yc2;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget-object p2, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v1, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do$if;->do:Lorg/chromium/net/urlconnection/do;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/do;->this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/support/v4/yc2;->if(Z)V

    return-void
.end method
