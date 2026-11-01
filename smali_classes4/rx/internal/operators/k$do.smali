.class Lrx/internal/operators/k$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/k;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private do:Z

.field private for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private if:Z

.field public final synthetic new:Landroid/support/v4/b02;

.field public final synthetic try:Lrx/internal/operators/k;


# direct methods
.method public constructor <init>(Lrx/internal/operators/k;Landroid/support/v4/b02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/k$do;->try:Lrx/internal/operators/k;

    iput-object p2, p0, Lrx/internal/operators/k$do;->new:Landroid/support/v4/b02;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/k$do;->do:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/k$do;->if:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lrx/internal/operators/k$do;->new:Landroid/support/v4/b02;

    iget-object v1, p0, Lrx/internal/operators/k$do;->for:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/k$do;->new:Landroid/support/v4/b02;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Observable emitted no items"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k$do;->new:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

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
    iget-boolean v0, p0, Lrx/internal/operators/k$do;->if:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lrx/internal/operators/k$do;->do:Z

    .line 3
    iget-object p1, p0, Lrx/internal/operators/k$do;->new:Landroid/support/v4/b02;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Observable emitted too many elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lrx/internal/operators/k$do;->if:Z

    .line 6
    iput-object p1, p0, Lrx/internal/operators/k$do;->for:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method
