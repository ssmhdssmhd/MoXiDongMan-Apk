.class Lrx/internal/operators/while$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/while$do;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/while$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/while$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/while$do$do;->do:Lrx/internal/operators/while$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/while$do$do;->do:Lrx/internal/operators/while$do;

    iget-object v0, v0, Lrx/internal/operators/while$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/while$do$do;->do:Lrx/internal/operators/while$do;

    iget-object v0, v0, Lrx/internal/operators/while$do;->for:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/while$do$do;->do:Lrx/internal/operators/while$do;

    iget-object v0, v0, Lrx/internal/operators/while$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/while$do$do;->do:Lrx/internal/operators/while$do;

    iget-object v0, v0, Lrx/internal/operators/while$do;->for:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/while$do$do;->do:Lrx/internal/operators/while$do;

    iget-object v0, v0, Lrx/internal/operators/while$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    return-void
.end method
