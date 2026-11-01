.class final Lio/reactivex/processors/else$do;
.super Landroid/support/v4/z7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/z7<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x43f4c9bf08ec328eL


# instance fields
.field public final synthetic this$0:Lio/reactivex/processors/else;


# direct methods
.method public constructor <init>(Lio/reactivex/processors/else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    invoke-direct {p0}, Landroid/support/v4/z7;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-boolean v0, v0, Lio/reactivex/processors/else;->goto:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/processors/else;->goto:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    invoke-virtual {v0}, Lio/reactivex/processors/else;->W7()V

    .line 4
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-object v0, v0, Lio/reactivex/processors/else;->else:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-object v0, v0, Lio/reactivex/processors/else;->break:Landroid/support/v4/z7;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-object v0, v0, Lio/reactivex/processors/else;->else:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-boolean v1, v0, Lio/reactivex/processors/else;->class:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v0, v0, Lio/reactivex/processors/else;->if:Landroid/support/v4/e12;

    invoke-virtual {v0}, Landroid/support/v4/e12;->clear()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-object v0, v0, Lio/reactivex/processors/else;->if:Landroid/support/v4/e12;

    invoke-virtual {v0}, Landroid/support/v4/e12;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-object v0, v0, Lio/reactivex/processors/else;->if:Landroid/support/v4/e12;

    invoke-virtual {v0}, Landroid/support/v4/e12;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/a51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-object v0, v0, Lio/reactivex/processors/else;->if:Landroid/support/v4/e12;

    invoke-virtual {v0}, Landroid/support/v4/e12;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/for;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    iget-object v0, v0, Lio/reactivex/processors/else;->catch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/r6;->do(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-object p1, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    invoke-virtual {p1}, Lio/reactivex/processors/else;->X7()V

    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/reactivex/processors/else$do;->this$0:Lio/reactivex/processors/else;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lio/reactivex/processors/else;->class:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
