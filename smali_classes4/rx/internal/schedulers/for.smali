.class public final Lrx/internal/schedulers/for;
.super Lrx/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/for$do;
    }
.end annotation


# instance fields
.field public final do:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/for;->do:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public do()Lrx/if$do;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/schedulers/for$do;

    iget-object v1, p0, Lrx/internal/schedulers/for;->do:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/for$do;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
