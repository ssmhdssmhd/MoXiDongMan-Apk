.class Lrx/observables/if$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/if;->return(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/BlockingQueue;

.field public final synthetic if:Lrx/observables/if;


# direct methods
.method public constructor <init>(Lrx/observables/if;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/if$else;->if:Lrx/observables/if;

    iput-object p2, p0, Lrx/observables/if$else;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/observables/if$else;->do:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/if;->new:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
