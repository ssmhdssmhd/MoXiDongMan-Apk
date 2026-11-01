.class final Lrx/internal/operators/synchronized$do$do$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/synchronized$do$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT",
        "LeftDuration;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:I

.field public final synthetic for:Lrx/internal/operators/synchronized$do$do;

.field public if:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/synchronized$do$do;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/synchronized$do$do$do;->for:Lrx/internal/operators/synchronized$do$do;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/synchronized$do$do$do;->if:Z

    .line 3
    iput p2, p0, Lrx/internal/operators/synchronized$do$do$do;->do:I

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/synchronized$do$do$do;->if:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/synchronized$do$do$do;->if:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do$do;->for:Lrx/internal/operators/synchronized$do$do;

    iget v1, p0, Lrx/internal/operators/synchronized$do$do$do;->do:I

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/synchronized$do$do;->do(ILrx/Subscription;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do$do;->for:Lrx/internal/operators/synchronized$do$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/synchronized$do$do;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "LeftDuration;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/synchronized$do$do$do;->onCompleted()V

    return-void
.end method
