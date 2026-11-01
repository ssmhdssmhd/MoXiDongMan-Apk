.class Lorg/chromium/net/impl/else$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/else;->if(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lorg/chromium/net/impl/else;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/else;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    iput-boolean p2, p0, Lorg/chromium/net/impl/else$if;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->try(Lorg/chromium/net/impl/else;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "Read upload data length %d exceeds expected length %d"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    iget-object v8, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v8}, Lorg/chromium/net/impl/else;->this(Lorg/chromium/net/impl/else;)J

    move-result-wide v8

    sub-long/2addr v0, v8

    iget-object v8, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v8}, Lorg/chromium/net/impl/else;->try(Lorg/chromium/net/impl/else;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v0, v8

    if-gez v10, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    .line 5
    invoke-static {v7}, Lorg/chromium/net/impl/else;->this(Lorg/chromium/net/impl/else;)J

    move-result-wide v7

    iget-object v9, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v9}, Lorg/chromium/net/impl/else;->try(Lorg/chromium/net/impl/else;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    iget-object v5, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v5}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    .line 6
    invoke-static {v6, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/else;->static(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->try(Lorg/chromium/net/impl/else;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/else;->return(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v8, v1

    invoke-static {v0, v8, v9}, Lorg/chromium/net/impl/else;->break(Lorg/chromium/net/impl/else;J)J

    .line 9
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->this(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    iget-object v8, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v8}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v8

    cmp-long v10, v0, v8

    if-ltz v10, :cond_4

    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    iget-boolean v0, p0, Lorg/chromium/net/impl/else$if;->do:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    cmp-long v8, v0, v6

    if-nez v8, :cond_2

    .line 11
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-virtual {v0}, Lorg/chromium/net/impl/else;->throw()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    iget-object v6, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v6}, Lorg/chromium/net/impl/else;->this(Lorg/chromium/net/impl/else;)J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-nez v8, :cond_3

    .line 13
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-virtual {v0}, Lorg/chromium/net/impl/else;->throw()V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    .line 16
    invoke-static {v7}, Lorg/chromium/net/impl/else;->this(Lorg/chromium/net/impl/else;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    iget-object v5, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v5}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    .line 17
    invoke-static {v6, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/else;->static(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 19
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->try(Lorg/chromium/net/impl/else;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 20
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->catch(Lorg/chromium/net/impl/else;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    iget-object v0, p0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    new-instance v1, Lorg/chromium/net/impl/else$if$do;

    invoke-direct {v1, p0}, Lorg/chromium/net/impl/else$if$do;-><init>(Lorg/chromium/net/impl/else$if;)V

    invoke-static {v0, v1}, Lorg/chromium/net/impl/else;->const(Lorg/chromium/net/impl/else;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    :goto_1
    return-void
.end method
