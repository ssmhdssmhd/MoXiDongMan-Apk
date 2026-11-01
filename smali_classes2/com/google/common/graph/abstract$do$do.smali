.class Lcom/google/common/graph/abstract$do$do;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/abstract$do;->do()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ac2<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Iterator;

.field public final synthetic if:Lcom/google/common/graph/abstract$do;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/abstract$do;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/abstract$do$do;->if:Lcom/google/common/graph/abstract$do;

    iput-object p2, p0, Lcom/google/common/graph/abstract$do$do;->do:Ljava/util/Iterator;

    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/abstract$do$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/abstract$do$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    iget-object v1, p0, Lcom/google/common/graph/abstract$do$do;->if:Lcom/google/common/graph/abstract$do;

    iget-object v1, v1, Lcom/google/common/graph/abstract$do;->do:Lcom/google/common/graph/abstract;

    invoke-static {v1, v0}, Lcom/google/common/graph/abstract;->if(Lcom/google/common/graph/abstract;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
