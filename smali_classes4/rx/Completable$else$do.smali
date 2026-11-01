.class Lrx/Completable$else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$else;->do(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/dq;

.field public final synthetic for:Lrx/CompletableSubscriber;

.field public final synthetic if:Lrx/if$do;

.field public final synthetic new:Lrx/Completable$else;


# direct methods
.method public constructor <init>(Lrx/Completable$else;Landroid/support/v4/dq;Lrx/if$do;Lrx/CompletableSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$else$do;->new:Lrx/Completable$else;

    iput-object p2, p0, Lrx/Completable$else$do;->do:Landroid/support/v4/dq;

    iput-object p3, p0, Lrx/Completable$else$do;->if:Lrx/if$do;

    iput-object p4, p0, Lrx/Completable$else$do;->for:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .line 1
    iget-object v0, p0, Lrx/Completable$else$do;->do:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/Completable$else$do;->if:Lrx/if$do;

    new-instance v2, Lrx/Completable$else$do$do;

    invoke-direct {v2, p0}, Lrx/Completable$else$do$do;-><init>(Lrx/Completable$else$do;)V

    iget-object v3, p0, Lrx/Completable$else$do;->new:Lrx/Completable$else;

    iget-wide v4, v3, Lrx/Completable$else;->if:J

    iget-object v3, v3, Lrx/Completable$else;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/Completable$else$do;->new:Lrx/Completable$else;

    iget-boolean v0, v0, Lrx/Completable$else;->new:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/Completable$else$do;->do:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/Completable$else$do;->if:Lrx/if$do;

    new-instance v2, Lrx/Completable$else$do$if;

    invoke-direct {v2, p0, p1}, Lrx/Completable$else$do$if;-><init>(Lrx/Completable$else$do;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lrx/Completable$else$do;->new:Lrx/Completable$else;

    iget-wide v3, p1, Lrx/Completable$else;->if:J

    iget-object p1, p1, Lrx/Completable$else;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/Completable$else$do;->for:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$else$do;->do:Landroid/support/v4/dq;

    invoke-virtual {v0, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 2
    iget-object p1, p0, Lrx/Completable$else$do;->for:Lrx/CompletableSubscriber;

    iget-object v0, p0, Lrx/Completable$else$do;->do:Landroid/support/v4/dq;

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    return-void
.end method
