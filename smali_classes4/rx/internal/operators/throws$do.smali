.class final Lrx/internal/operators/throws$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/throws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/throws$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/throws$if<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public for:Z

.field public final if:I


# direct methods
.method public constructor <init>(Lrx/internal/operators/throws$if;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/throws$if<",
            "TT;TR;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/throws$do;->do:Lrx/internal/operators/throws$if;

    .line 3
    iput p2, p0, Lrx/internal/operators/throws$do;->if:I

    .line 4
    iget p1, p1, Lrx/internal/operators/throws$if;->bufferSize:I

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public do(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/throws$do;->for:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/throws$do;->for:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/throws$do;->do:Lrx/internal/operators/throws$if;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/throws$do;->if:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/throws$if;->combine(Ljava/lang/Object;I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/throws$do;->for:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/throws$do;->do:Lrx/internal/operators/throws$if;

    invoke-virtual {v0, p1}, Lrx/internal/operators/throws$if;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lrx/internal/operators/throws$do;->for:Z

    .line 5
    iget-object p1, p0, Lrx/internal/operators/throws$do;->do:Lrx/internal/operators/throws$if;

    const/4 v0, 0x0

    iget v1, p0, Lrx/internal/operators/throws$do;->if:I

    invoke-virtual {p1, v0, v1}, Lrx/internal/operators/throws$if;->combine(Ljava/lang/Object;I)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/throws$do;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/throws$do;->do:Lrx/internal/operators/throws$if;

    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget v1, p0, Lrx/internal/operators/throws$do;->if:I

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/throws$if;->combine(Ljava/lang/Object;I)V

    return-void
.end method
