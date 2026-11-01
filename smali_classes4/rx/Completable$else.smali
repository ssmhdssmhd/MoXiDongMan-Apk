.class Lrx/Completable$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->public(JLjava/util/concurrent/TimeUnit;Lrx/if;Z)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/if;

.field public final synthetic for:Ljava/util/concurrent/TimeUnit;

.field public final synthetic if:J

.field public final synthetic new:Z

.field public final synthetic try:Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable;Lrx/if;JLjava/util/concurrent/TimeUnit;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$else;->try:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$else;->do:Lrx/if;

    iput-wide p3, p0, Lrx/Completable$else;->if:J

    iput-object p5, p0, Lrx/Completable$else;->for:Ljava/util/concurrent/TimeUnit;

    iput-boolean p6, p0, Lrx/Completable$else;->new:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$else;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0}, Landroid/support/v4/dq;-><init>()V

    .line 2
    iget-object v1, p0, Lrx/Completable$else;->do:Lrx/if;

    invoke-virtual {v1}, Lrx/if;->do()Lrx/if$do;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 4
    iget-object v2, p0, Lrx/Completable$else;->try:Lrx/Completable;

    new-instance v3, Lrx/Completable$else$do;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/Completable$else$do;-><init>(Lrx/Completable$else;Landroid/support/v4/dq;Lrx/if$do;Lrx/CompletableSubscriber;)V

    invoke-virtual {v2, v3}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-void
.end method
