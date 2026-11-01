.class final Lio/reactivex/schedulers/if$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/if$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:Lio/reactivex/schedulers/if$if;

.field public final synthetic if:Lio/reactivex/schedulers/if$do;


# direct methods
.method public constructor <init>(Lio/reactivex/schedulers/if$do;Lio/reactivex/schedulers/if$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/schedulers/if$do$do;->if:Lio/reactivex/schedulers/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/schedulers/if$do$do;->do:Lio/reactivex/schedulers/if$if;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/schedulers/if$do$do;->if:Lio/reactivex/schedulers/if$do;

    iget-object v0, v0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    iget-object v0, v0, Lio/reactivex/schedulers/if;->if:Ljava/util/Queue;

    iget-object v1, p0, Lio/reactivex/schedulers/if$do$do;->do:Lio/reactivex/schedulers/if$if;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
