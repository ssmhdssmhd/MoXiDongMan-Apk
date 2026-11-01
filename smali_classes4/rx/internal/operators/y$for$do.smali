.class final Lrx/internal/operators/y$for$do;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/y$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f9355307bc4d2b2L


# instance fields
.field public final synthetic this$0:Lrx/internal/operators/y$for;


# direct methods
.method public constructor <init>(Lrx/internal/operators/y$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/y$for$do;->this$0:Lrx/internal/operators/y$for;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y$for$do;->this$0:Lrx/internal/operators/y$for;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Lrx/internal/operators/y$for;->if:I

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Landroid/support/v4/u6;->for(JJ)J

    move-result-wide v1

    .line 4
    iget v3, v0, Lrx/internal/operators/y$for;->for:I

    iget v4, v0, Lrx/internal/operators/y$for;->if:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    sub-long/2addr p1, v5

    invoke-static {v3, v4, p1, p2}, Landroid/support/v4/u6;->for(JJ)J

    move-result-wide p1

    .line 5
    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/u6;->do(JJ)J

    move-result-wide p1

    .line 6
    invoke-static {v0, p1, p2}, Lrx/internal/operators/y$for;->do(Lrx/internal/operators/y$for;J)V

    goto :goto_0

    .line 7
    :cond_0
    iget v1, v0, Lrx/internal/operators/y$for;->for:I

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Landroid/support/v4/u6;->for(JJ)J

    move-result-wide p1

    .line 8
    invoke-static {v0, p1, p2}, Lrx/internal/operators/y$for;->if(Lrx/internal/operators/y$for;J)V

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
