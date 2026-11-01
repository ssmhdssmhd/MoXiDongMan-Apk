.class public final Lrx/subjects/for;
.super Landroid/support/v4/u22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/for$do;,
        Lrx/subjects/for$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/u22<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final if:Lrx/subjects/for$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/for$if<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/subjects/for$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/for$if<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    return-void
.end method

.method public static g6()Lrx/subjects/for;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/for;

    new-instance v1, Lrx/subjects/for$if;

    invoke-direct {v1}, Lrx/subjects/for$if;-><init>()V

    invoke-direct {v0, v1}, Lrx/subjects/for;-><init>(Lrx/subjects/for$if;)V

    return-object v0
.end method


# virtual methods
.method public e6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/for$do;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h6()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/for$if;->TERMINATED:[Lrx/subjects/for$do;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    iget-object v0, v0, Lrx/subjects/for$if;->error:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i6()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/for$if;->TERMINATED:[Lrx/subjects/for$do;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    iget-object v0, v0, Lrx/subjects/for$if;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j6()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/for$if;->TERMINATED:[Lrx/subjects/for$do;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    iget-object v0, v0, Lrx/subjects/for$if;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    invoke-virtual {v0}, Lrx/subjects/for$if;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    invoke-virtual {v0, p1}, Lrx/subjects/for$if;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/for;->if:Lrx/subjects/for$if;

    invoke-virtual {v0, p1}, Lrx/subjects/for$if;->onNext(Ljava/lang/Object;)V

    return-void
.end method
