.class Lcom/google/common/util/concurrent/if$do;
.super Lcom/google/common/util/concurrent/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic throw:Lcom/google/common/util/concurrent/if;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/if;->else()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/if;->if()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/if$do$do;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/if$do$do;-><init>(Lcom/google/common/util/concurrent/if$do;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/implements;->while(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/common/util/concurrent/if$do$if;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/if$do$if;-><init>(Lcom/google/common/util/concurrent/if$do;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
