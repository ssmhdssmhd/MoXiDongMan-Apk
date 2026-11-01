.class public Lrx/internal/util/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# static fields
.field public static final new:I


# instance fields
.field private do:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile for:Ljava/lang/Object;

.field private final if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/support/v4/yd1;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    const-string v1, "rx.ring-buffer.size"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_1
    sput v0, Lrx/internal/util/try;->new:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    new-instance v0, Lrx/internal/util/atomic/new;

    sget v1, Lrx/internal/util/try;->new:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/new;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lrx/internal/util/try;-><init>(Ljava/util/Queue;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    .line 3
    iput p2, p0, Lrx/internal/util/try;->if:I

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lrx/internal/util/unsafe/super;

    invoke-direct {p1, p2}, Lrx/internal/util/unsafe/super;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lrx/internal/util/unsafe/switch;

    invoke-direct {p1, p2}, Lrx/internal/util/unsafe/switch;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    .line 6
    iput p2, p0, Lrx/internal/util/try;->if:I

    return-void
.end method

.method public static case()Lrx/internal/util/try;
    .locals 3

    .line 1
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lrx/internal/util/try;

    const/4 v1, 0x1

    sget v2, Lrx/internal/util/try;->new:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/try;-><init>(ZI)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lrx/internal/util/try;

    invoke-direct {v0}, Lrx/internal/util/try;-><init>()V

    return-object v0
.end method

.method public static else()Lrx/internal/util/try;
    .locals 3

    .line 1
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lrx/internal/util/try;

    const/4 v1, 0x0

    sget v2, Lrx/internal/util/try;->new:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/try;-><init>(ZI)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lrx/internal/util/try;

    invoke-direct {v0}, Lrx/internal/util/try;-><init>()V

    return-object v0
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public catch(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public class()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/util/try;->for:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/try;->for:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public const(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/util/try;->for:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/util/try;->for:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public do(Ljava/lang/Object;Lrx/Observer;)Z
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lrx/internal/operators/return;->do(Lrx/Observer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/zz0;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    move v2, p1

    const/4 v1, 0x0

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/zz0;

    invoke-direct {p1}, Landroid/support/v4/zz0;-><init>()V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public for()I
    .locals 2

    .line 1
    iget v0, p0, Lrx/internal/util/try;->if:I

    invoke-virtual {p0}, Lrx/internal/util/try;->try()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public goto(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p1}, Lrx/internal/operators/return;->new(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lrx/internal/util/try;->if:I

    return v0
.end method

.method public super()Ljava/lang/Object;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lrx/internal/util/try;->for:Ljava/lang/Object;

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v2

    .line 7
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public this(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lrx/internal/operators/return;->case(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public throw()Ljava/lang/Object;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lrx/internal/util/try;->for:Ljava/lang/Object;

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iput-object v1, p0, Lrx/internal/util/try;->for:Ljava/lang/Object;

    move-object v2, v3

    .line 8
    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/util/try;->do:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrx/internal/util/try;->while()V

    return-void
.end method

.method public declared-synchronized while()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method
