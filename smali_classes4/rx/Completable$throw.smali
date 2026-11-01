.class Lrx/Completable$throw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->m(Lrx/if;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/if;

.field public final synthetic if:Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable;Lrx/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$throw;->if:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$throw;->do:Lrx/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$throw;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/d32;

    invoke-direct {v0}, Landroid/support/v4/d32;-><init>()V

    .line 2
    iget-object v1, p0, Lrx/Completable$throw;->do:Lrx/if;

    invoke-virtual {v1}, Lrx/if;->do()Lrx/if$do;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    .line 4
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 5
    iget-object v2, p0, Lrx/Completable$throw;->if:Lrx/Completable;

    new-instance v3, Lrx/Completable$throw$do;

    invoke-direct {v3, p0, v1, p1, v0}, Lrx/Completable$throw$do;-><init>(Lrx/Completable$throw;Lrx/if$do;Lrx/CompletableSubscriber;Landroid/support/v4/d32;)V

    invoke-virtual {v2, v3}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-void
.end method
