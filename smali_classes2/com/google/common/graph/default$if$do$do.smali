.class Lcom/google/common/graph/default$if$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/default$if$do;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/graph/import<",
        "TN;>;",
        "Lcom/google/common/graph/import<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/graph/default$if$do;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/default$if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/default$if$do$do;->do:Lcom/google/common/graph/default$if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/graph/import;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/default$if$do$do;->do(Lcom/google/common/graph/import;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/google/common/graph/import;)Lcom/google/common/graph/import;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/import<",
            "TN;>;)",
            "Lcom/google/common/graph/import<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/default$if$do$do;->do:Lcom/google/common/graph/default$if$do;

    iget-object v0, v0, Lcom/google/common/graph/default$if$do;->for:Lcom/google/common/graph/default$if;

    invoke-virtual {v0}, Lcom/google/common/graph/default$if;->case()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/import;->try()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/graph/import;->new()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/graph/import;->case(Lcom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method
