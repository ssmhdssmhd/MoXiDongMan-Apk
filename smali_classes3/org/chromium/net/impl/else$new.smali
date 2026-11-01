.class Lorg/chromium/net/impl/else$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/else;->switch(Z)V
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
    iput-object p1, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    iput-boolean p2, p0, Lorg/chromium/net/impl/else$new;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->class(Lorg/chromium/net/impl/else;)Lorg/chromium/net/public;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/public;->do()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/chromium/net/impl/else;->goto(Lorg/chromium/net/impl/else;J)J

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-virtual {v0}, Lorg/chromium/net/impl/else;->throw()V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 5
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/net/impl/else;->case(Lorg/chromium/net/impl/else;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/net/impl/else;->case(Lorg/chromium/net/impl/else;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 7
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->else(Lorg/chromium/net/impl/else;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/impl/else;->public(J)V

    .line 8
    iget-boolean v0, p0, Lorg/chromium/net/impl/else$new;->do:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->final(Lorg/chromium/net/impl/else;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->catch(Lorg/chromium/net/impl/else;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    iget-object v0, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->class(Lorg/chromium/net/impl/else;)Lorg/chromium/net/public;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/else$new;->if:Lorg/chromium/net/impl/else;

    invoke-virtual {v0, v1}, Lorg/chromium/net/public;->for(Landroid/support/v4/yc2;)V

    :goto_1
    return-void
.end method
