.class final enum Lcom/google/common/util/concurrent/CycleDetectingLockFactory$goto$if;
.super Lcom/google/common/util/concurrent/CycleDetectingLockFactory$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory$goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$goto;-><init>(Ljava/lang/String;ILcom/google/common/util/concurrent/CycleDetectingLockFactory$do;)V

    return-void
.end method


# virtual methods
.method public handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->if()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Detected potential deadlock"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
