.class final Lcom/google/common/util/concurrent/d$case;
.super Lcom/google/common/util/concurrent/Service$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation


# instance fields
.field public final do:Lcom/google/common/util/concurrent/Service;

.field public final if:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/common/util/concurrent/d$else;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/common/util/concurrent/d$else;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$if;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/d$case;->if:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public do(Lcom/google/common/util/concurrent/Service$for;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$case;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/d$else;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    instance-of v1, v1, Lcom/google/common/util/concurrent/d$try;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/d;->do()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has failed in the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/common/util/concurrent/d$else;->final(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$for;Lcom/google/common/util/concurrent/Service$for;)V

    :cond_1
    return-void
.end method

.method public for()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$case;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/d$else;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    sget-object v3, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/d$else;->final(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$for;Lcom/google/common/util/concurrent/Service$for;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    instance-of v0, v0, Lcom/google/common/util/concurrent/d$try;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/d;->do()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    const-string v3, "Starting {0}."

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$case;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/d$else;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    sget-object v3, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/d$else;->final(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$for;Lcom/google/common/util/concurrent/Service$for;)V

    :cond_0
    return-void
.end method

.method public new(Lcom/google/common/util/concurrent/Service$for;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$case;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/d$else;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->STOPPING:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/common/util/concurrent/d$else;->final(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$for;Lcom/google/common/util/concurrent/Service$for;)V

    :cond_0
    return-void
.end method

.method public try(Lcom/google/common/util/concurrent/Service$for;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$case;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/d$else;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    instance-of v1, v1, Lcom/google/common/util/concurrent/d$try;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/d;->do()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string v4, "Service {0} has terminated. Previous state was: {1}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$case;->do:Lcom/google/common/util/concurrent/Service;

    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/common/util/concurrent/d$else;->final(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$for;Lcom/google/common/util/concurrent/Service$for;)V

    :cond_1
    return-void
.end method
