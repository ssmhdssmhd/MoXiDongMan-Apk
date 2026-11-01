.class Lrx/internal/util/else$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/else$if;->do(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Action0;

.field public final synthetic for:Lrx/internal/util/else$if;

.field public final synthetic if:Lrx/if$do;


# direct methods
.method public constructor <init>(Lrx/internal/util/else$if;Lrx/functions/Action0;Lrx/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/util/else$if$do;->for:Lrx/internal/util/else$if;

    iput-object p2, p0, Lrx/internal/util/else$if$do;->do:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/internal/util/else$if$do;->if:Lrx/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/else$if$do;->do:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lrx/internal/util/else$if$do;->if:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/util/else$if$do;->if:Lrx/if$do;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    throw v0
.end method
