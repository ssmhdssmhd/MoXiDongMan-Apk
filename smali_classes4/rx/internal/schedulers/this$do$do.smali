.class Lrx/internal/schedulers/this$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/this$do;->do(Lrx/internal/schedulers/this$else;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/schedulers/this$else;

.field public final synthetic if:Lrx/internal/schedulers/this$do;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/this$do;Lrx/internal/schedulers/this$else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/this$do$do;->if:Lrx/internal/schedulers/this$do;

    iput-object p2, p0, Lrx/internal/schedulers/this$do$do;->do:Lrx/internal/schedulers/this$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/schedulers/this$do$do;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/this$do$do;->do:Lrx/internal/schedulers/this$else;

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/this$do$do;->do:Lrx/internal/schedulers/this$else;

    iget-object v1, p0, Lrx/internal/schedulers/this$do$do;->if:Lrx/internal/schedulers/this$do;

    iget-object v1, v1, Lrx/internal/schedulers/this$do;->do:Lrx/if$do;

    invoke-static {v0, v1, p1}, Lrx/internal/schedulers/this$else;->access$000(Lrx/internal/schedulers/this$else;Lrx/if$do;Lrx/CompletableSubscriber;)V

    return-void
.end method
