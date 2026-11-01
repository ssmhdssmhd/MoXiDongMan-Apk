.class final Lrx/internal/operators/b3$do$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/b3$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lrx/internal/operators/b3$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/b3$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/b3$do$do;->if:Lrx/internal/operators/b3$do;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Single::takeUntil(Single) - Stream was canceled before emitting a terminal event."

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lrx/internal/operators/b3$do$do;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/b3$do$do;->if:Lrx/internal/operators/b3$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/b3$do;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
