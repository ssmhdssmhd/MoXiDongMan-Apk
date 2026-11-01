.class final Lrx/Completable$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->N(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/if;

.field public final synthetic for:Ljava/util/concurrent/TimeUnit;

.field public final synthetic if:J


# direct methods
.method public constructor <init>(Lrx/if;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$for;->do:Lrx/if;

    iput-wide p2, p0, Lrx/Completable$for;->if:J

    iput-object p4, p0, Lrx/Completable$for;->for:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$for;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/x01;

    invoke-direct {v0}, Landroid/support/v4/x01;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/x01;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lrx/Completable$for;->do:Lrx/if;

    invoke-virtual {v1}, Lrx/if;->do()Lrx/if$do;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v4/x01;->if(Lrx/Subscription;)V

    .line 6
    new-instance v0, Lrx/Completable$for$do;

    invoke-direct {v0, p0, p1, v1}, Lrx/Completable$for$do;-><init>(Lrx/Completable$for;Lrx/CompletableSubscriber;Lrx/if$do;)V

    iget-wide v2, p0, Lrx/Completable$for;->if:J

    iget-object p1, p0, Lrx/Completable$for;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    :cond_0
    return-void
.end method
