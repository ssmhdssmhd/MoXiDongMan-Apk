.class Lcom/google/common/util/concurrent/if$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/if$do;->try()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/if$do;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/if$do$do;->do:Lcom/google/common/util/concurrent/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do$do;->do:Lcom/google/common/util/concurrent/if$do;

    iget-object v0, v0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/if;->new()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/if$do$do;->do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
