.class public final Landroid/support/v4/i31;
.super Lrx/if;
.source "SourceFile"


# instance fields
.field private final do:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/i31;->do:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public do()Lrx/if$do;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/schedulers/else;

    iget-object v1, p0, Landroid/support/v4/i31;->do:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/else;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
