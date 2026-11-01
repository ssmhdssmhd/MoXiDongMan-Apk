.class public abstract Lrx/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/if$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()Lrx/if$do;
.end method

.method public for(Lrx/functions/Func1;)Lrx/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lrx/if;",
            ":",
            "Lrx/Subscription;",
            ">(",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "Lrx/Observable<",
            "Lrx/Completable;",
            ">;>;",
            "Lrx/Completable;",
            ">;)TS;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/schedulers/this;

    invoke-direct {v0, p1, p0}, Lrx/internal/schedulers/this;-><init>(Lrx/functions/Func1;Lrx/if;)V

    return-object v0
.end method

.method public if()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
