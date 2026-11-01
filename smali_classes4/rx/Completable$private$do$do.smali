.class Lrx/Completable$private$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$private$do;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/Subscription;

.field public final synthetic if:Lrx/Completable$private$do;


# direct methods
.method public constructor <init>(Lrx/Completable$private$do;Lrx/Subscription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$private$do$do;->if:Lrx/Completable$private$do;

    iput-object p2, p0, Lrx/Completable$private$do$do;->do:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/Completable$private$do$do;->if:Lrx/Completable$private$do;

    iget-object v0, v0, Lrx/Completable$private$do;->if:Lrx/Completable$private;

    iget-object v0, v0, Lrx/Completable$private;->do:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    new-instance v1, Lrx/Completable$private$do$do$do;

    invoke-direct {v1, p0, v0}, Lrx/Completable$private$do$do$do;-><init>(Lrx/Completable$private$do$do;Lrx/if$do;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method
