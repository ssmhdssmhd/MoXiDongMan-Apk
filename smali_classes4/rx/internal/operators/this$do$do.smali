.class final Lrx/internal/operators/this$do$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/this$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x646290c7e039ac74L


# instance fields
.field public final synthetic this$0:Lrx/internal/operators/this$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/this$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/this$do$do;->this$0:Lrx/internal/operators/this$do;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/this$do$do;->this$0:Lrx/internal/operators/this$do;

    invoke-virtual {v0}, Lrx/internal/operators/this$do;->if()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/this$do$do;->this$0:Lrx/internal/operators/this$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/this$do;->for(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/this$do$do;->this$0:Lrx/internal/operators/this$do;

    iget-object v0, v0, Lrx/internal/operators/this$do;->if:Landroid/support/v4/uw1;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
