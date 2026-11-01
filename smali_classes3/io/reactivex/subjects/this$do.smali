.class final Lio/reactivex/subjects/this$do;
.super Landroid/support/v4/y7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y7<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e022e8b5b1c1e37L


# instance fields
.field public final synthetic this$0:Lio/reactivex/subjects/this;


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/this;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    invoke-direct {p0}, Landroid/support/v4/y7;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-object v0, v0, Lio/reactivex/subjects/this;->do:Landroid/support/v4/e12;

    invoke-virtual {v0}, Landroid/support/v4/e12;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-boolean v0, v0, Lio/reactivex/subjects/this;->try:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/subjects/this;->try:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    invoke-virtual {v0}, Lio/reactivex/subjects/this;->catch()V

    .line 4
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-object v0, v0, Lio/reactivex/subjects/this;->if:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-object v0, v0, Lio/reactivex/subjects/this;->this:Landroid/support/v4/y7;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-object v0, v0, Lio/reactivex/subjects/this;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-boolean v1, v0, Lio/reactivex/subjects/this;->break:Z

    if-nez v1, :cond_0

    .line 8
    iget-object v0, v0, Lio/reactivex/subjects/this;->do:Landroid/support/v4/e12;

    invoke-virtual {v0}, Landroid/support/v4/e12;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-boolean v0, v0, Lio/reactivex/subjects/this;->try:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-object v0, v0, Lio/reactivex/subjects/this;->do:Landroid/support/v4/e12;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    iget-object v0, v0, Lio/reactivex/subjects/this;->do:Landroid/support/v4/e12;

    invoke-virtual {v0}, Landroid/support/v4/e12;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/reactivex/subjects/this$do;->this$0:Lio/reactivex/subjects/this;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lio/reactivex/subjects/this;->break:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
