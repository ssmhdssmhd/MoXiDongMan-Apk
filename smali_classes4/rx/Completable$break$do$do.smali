.class Lrx/Completable$break$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$break$do;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/Subscription;

.field public final synthetic if:Lrx/Completable$break$do;


# direct methods
.method public constructor <init>(Lrx/Completable$break$do;Lrx/Subscription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$break$do$do;->if:Lrx/Completable$break$do;

    iput-object p2, p0, Lrx/Completable$break$do$do;->do:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Completable$break$do$do;->if:Lrx/Completable$break$do;

    iget-object v0, v0, Lrx/Completable$break$do;->if:Lrx/Completable$break;

    iget-object v0, v0, Lrx/Completable$break;->try:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lrx/Completable$break$do$do;->do:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
