.class Lrx/Completable$throw$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$throw;->do(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/if$do;

.field public final synthetic for:Landroid/support/v4/d32;

.field public final synthetic if:Lrx/CompletableSubscriber;

.field public final synthetic new:Lrx/Completable$throw;


# direct methods
.method public constructor <init>(Lrx/Completable$throw;Lrx/if$do;Lrx/CompletableSubscriber;Landroid/support/v4/d32;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$throw$do;->new:Lrx/Completable$throw;

    iput-object p2, p0, Lrx/Completable$throw$do;->do:Lrx/if$do;

    iput-object p3, p0, Lrx/Completable$throw$do;->if:Lrx/CompletableSubscriber;

    iput-object p4, p0, Lrx/Completable$throw$do;->for:Landroid/support/v4/d32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/Completable$throw$do;->do:Lrx/if$do;

    new-instance v1, Lrx/Completable$throw$do$do;

    invoke-direct {v1, p0}, Lrx/Completable$throw$do$do;-><init>(Lrx/Completable$throw$do;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/Completable$throw$do;->do:Lrx/if$do;

    new-instance v1, Lrx/Completable$throw$do$if;

    invoke-direct {v1, p0, p1}, Lrx/Completable$throw$do$if;-><init>(Lrx/Completable$throw$do;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$throw$do;->for:Landroid/support/v4/d32;

    invoke-virtual {v0, p1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    return-void
.end method
