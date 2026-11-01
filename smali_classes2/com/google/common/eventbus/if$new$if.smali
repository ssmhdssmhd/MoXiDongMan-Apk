.class Lcom/google/common/eventbus/if$new$if;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/if$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/eventbus/if$new;


# direct methods
.method public constructor <init>(Lcom/google/common/eventbus/if$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/eventbus/if$new$if;->do:Lcom/google/common/eventbus/if$new;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/eventbus/if$new$if;->do()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
