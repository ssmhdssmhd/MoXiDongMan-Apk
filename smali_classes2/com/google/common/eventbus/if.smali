.class abstract Lcom/google/common/eventbus/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/if$if;,
        Lcom/google/common/eventbus/if$for;,
        Lcom/google/common/eventbus/if$new;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Lcom/google/common/eventbus/if;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/eventbus/if$for;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/eventbus/if$for;-><init>(Lcom/google/common/eventbus/if$do;)V

    return-object v0
.end method

.method public static if()Lcom/google/common/eventbus/if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/eventbus/if$if;->try()Lcom/google/common/eventbus/if$if;

    move-result-object v0

    return-object v0
.end method

.method public static new()Lcom/google/common/eventbus/if;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/eventbus/if$new;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/eventbus/if$new;-><init>(Lcom/google/common/eventbus/if$do;)V

    return-object v0
.end method


# virtual methods
.method public abstract do(Ljava/lang/Object;Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/new;",
            ">;)V"
        }
    .end annotation
.end method
