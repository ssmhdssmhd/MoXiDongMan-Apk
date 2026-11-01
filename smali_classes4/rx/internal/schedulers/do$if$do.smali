.class Lrx/internal/schedulers/do$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/do$if;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Action0;

.field public final synthetic if:Lrx/internal/schedulers/do$if;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/do$if;Lrx/functions/Action0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/do$if$do;->if:Lrx/internal/schedulers/do$if;

    iput-object p2, p0, Lrx/internal/schedulers/do$if$do;->do:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$if$do;->if:Lrx/internal/schedulers/do$if;

    invoke-virtual {v0}, Lrx/internal/schedulers/do$if;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/do$if$do;->do:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    return-void
.end method
