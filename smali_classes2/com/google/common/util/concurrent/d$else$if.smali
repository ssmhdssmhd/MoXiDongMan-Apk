.class Lcom/google/common/util/concurrent/d$else$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/d$else;->goto(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
        "Lcom/google/common/util/concurrent/d$new;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/Service;

.field public final synthetic if:Lcom/google/common/util/concurrent/d$else;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/d$else;Lcom/google/common/util/concurrent/Service;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/d$else$if;->if:Lcom/google/common/util/concurrent/d$else;

    iput-object p2, p0, Lcom/google/common/util/concurrent/d$else$if;->do:Lcom/google/common/util/concurrent/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/util/concurrent/d$new;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/d$else$if;->do(Lcom/google/common/util/concurrent/d$new;)V

    return-void
.end method

.method public do(Lcom/google/common/util/concurrent/d$new;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else$if;->do:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/d$new;->do(Lcom/google/common/util/concurrent/Service;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed({service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else$if;->do:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
