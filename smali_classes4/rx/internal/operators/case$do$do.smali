.class Lrx/internal/operators/case$do$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/case$do;->this()V
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
.field public final synthetic do:Lrx/internal/operators/case$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/case$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/case$do$do;->do:Lrx/internal/operators/case$do;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/case$do$do;->do:Lrx/internal/operators/case$do;

    invoke-virtual {v0}, Lrx/internal/operators/case$do;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/case$do$do;->do:Lrx/internal/operators/case$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/case$do;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lrx/internal/operators/case$do$do;->do:Lrx/internal/operators/case$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/case$do;->onNext(Ljava/lang/Object;)V

    return-void
.end method
