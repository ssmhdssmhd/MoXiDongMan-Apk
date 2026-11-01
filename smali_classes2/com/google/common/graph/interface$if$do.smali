.class Lcom/google/common/graph/interface$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/interface$if;->do(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Iterable;

.field public final synthetic if:Lcom/google/common/graph/interface$if;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/interface$if;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/interface$if$do;->if:Lcom/google/common/graph/interface$if;

    iput-object p2, p0, Lcom/google/common/graph/interface$if$do;->do:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/interface$if$new;

    iget-object v1, p0, Lcom/google/common/graph/interface$if$do;->if:Lcom/google/common/graph/interface$if;

    iget-object v2, p0, Lcom/google/common/graph/interface$if$do;->do:Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/interface$if$new;-><init>(Lcom/google/common/graph/interface$if;Ljava/lang/Iterable;)V

    return-object v0
.end method
