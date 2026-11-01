.class public abstract Lcom/google/common/util/concurrent/try$for;
.super Lcom/google/common/util/concurrent/try$new;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/try$for$if;,
        Lcom/google/common/util/concurrent/try$for$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/try$new;-><init>(Lcom/google/common/util/concurrent/try$do;)V

    return-void
.end method


# virtual methods
.method public final for(Lcom/google/common/util/concurrent/case;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/case;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/try$for$do;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/try$for$do;-><init>(Lcom/google/common/util/concurrent/try$for;Lcom/google/common/util/concurrent/case;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/try$for$do;->for()V

    return-object v0
.end method

.method public abstract new()Lcom/google/common/util/concurrent/try$for$if;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
