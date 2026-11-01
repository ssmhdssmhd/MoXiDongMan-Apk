.class Lorg/chromium/net/urlconnection/for$if;
.super Lorg/chromium/net/public;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/urlconnection/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/urlconnection/for;


# direct methods
.method private constructor <init>(Lorg/chromium/net/urlconnection/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-direct {p0}, Lorg/chromium/net/public;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/urlconnection/for;Lorg/chromium/net/urlconnection/for$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/for$if;-><init>(Lorg/chromium/net/urlconnection/for;)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/for;->else(Lorg/chromium/net/urlconnection/for;)J

    move-result-wide v0

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
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3
    iget-object p2, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1, v2}, Landroid/support/v4/yc2;->if(Z)V

    .line 5
    iget-object p1, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {p1}, Lorg/chromium/net/urlconnection/for;->this(Lorg/chromium/net/urlconnection/for;)Lorg/chromium/net/urlconnection/this;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/urlconnection/this;->case()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 7
    iget-object v1, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {v3}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object v1, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    iget-object p2, p0, Lorg/chromium/net/urlconnection/for$if;->do:Lorg/chromium/net/urlconnection/for;

    invoke-static {p2}, Lorg/chromium/net/urlconnection/for;->goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p1, v2}, Landroid/support/v4/yc2;->if(Z)V

    :goto_0
    return-void
.end method
