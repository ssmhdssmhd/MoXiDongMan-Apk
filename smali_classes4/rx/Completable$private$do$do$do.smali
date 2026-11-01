.class Lrx/Completable$private$do$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$private$do$do;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/if$do;

.field public final synthetic if:Lrx/Completable$private$do$do;


# direct methods
.method public constructor <init>(Lrx/Completable$private$do$do;Lrx/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$private$do$do$do;->if:Lrx/Completable$private$do$do;

    iput-object p2, p0, Lrx/Completable$private$do$do$do;->do:Lrx/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Completable$private$do$do$do;->if:Lrx/Completable$private$do$do;

    iget-object v0, v0, Lrx/Completable$private$do$do;->do:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lrx/Completable$private$do$do$do;->do:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/Completable$private$do$do$do;->do:Lrx/if$do;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    throw v0
.end method
