.class public final Lrx/subjects/else;
.super Landroid/support/v4/u22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/else$do;
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
.field public final if:Lrx/subjects/else$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/else$do<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/subjects/else$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/else$do<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/subjects/else;->if:Lrx/subjects/else$do;

    return-void
.end method

.method public static g6()Lrx/subjects/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/else<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lrx/subjects/else;->h6(I)Lrx/subjects/else;

    move-result-object v0

    return-object v0
.end method

.method public static h6(I)Lrx/subjects/else;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/else<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/else$do;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lrx/subjects/else$do;-><init>(IZLrx/functions/Action0;)V

    .line 2
    new-instance p0, Lrx/subjects/else;

    invoke-direct {p0, v0}, Lrx/subjects/else;-><init>(Lrx/subjects/else$do;)V

    return-object p0
.end method

.method public static i6(ILrx/functions/Action0;)Lrx/subjects/else;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/subjects/else<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/else$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lrx/subjects/else$do;-><init>(IZLrx/functions/Action0;)V

    .line 2
    new-instance p0, Lrx/subjects/else;

    invoke-direct {p0, v0}, Lrx/subjects/else;-><init>(Lrx/subjects/else$do;)V

    return-object p0
.end method

.method public static j6(ILrx/functions/Action0;Z)Lrx/subjects/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lrx/functions/Action0;",
            "Z)",
            "Lrx/subjects/else<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/else$do;

    invoke-direct {v0, p0, p2, p1}, Lrx/subjects/else$do;-><init>(IZLrx/functions/Action0;)V

    .line 2
    new-instance p0, Lrx/subjects/else;

    invoke-direct {p0, v0}, Lrx/subjects/else;-><init>(Lrx/subjects/else$do;)V

    return-object p0
.end method

.method public static k6(Z)Lrx/subjects/else;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/subjects/else<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/else$do;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lrx/subjects/else$do;-><init>(IZLrx/functions/Action0;)V

    .line 2
    new-instance p0, Lrx/subjects/else;

    invoke-direct {p0, v0}, Lrx/subjects/else;-><init>(Lrx/subjects/else$do;)V

    return-object p0
.end method


# virtual methods
.method public e6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/else;->if:Lrx/subjects/else$do;

    iget-object v0, v0, Lrx/subjects/else$do;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

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
    iget-object v0, p0, Lrx/subjects/else;->if:Lrx/subjects/else$do;

    invoke-virtual {v0}, Lrx/subjects/else$do;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/else;->if:Lrx/subjects/else$do;

    invoke-virtual {v0, p1}, Lrx/subjects/else$do;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lrx/subjects/else;->if:Lrx/subjects/else$do;

    invoke-virtual {v0, p1}, Lrx/subjects/else$do;->onNext(Ljava/lang/Object;)V

    return-void
.end method
