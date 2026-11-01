.class Lcom/google/common/collect/Maps$return$do;
.super Landroid/support/v4/ce0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ce0<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/Maps$return;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Maps$return;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Maps$return$do;->do:Lcom/google/common/collect/Maps$return;

    invoke-direct {p0}, Landroid/support/v4/ce0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$return;Lcom/google/common/collect/Maps$try;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$return$do;-><init>(Lcom/google/common/collect/Maps$return;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$return$do;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$return$do;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/Maps$return$do;->do:Lcom/google/common/collect/Maps$return;

    iget-object v0, v0, Lcom/google/common/collect/Maps$return;->case:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/Maps$return$do$do;

    iget-object v1, p0, Lcom/google/common/collect/Maps$return$do;->do:Lcom/google/common/collect/Maps$return;

    iget-object v1, v1, Lcom/google/common/collect/Maps$return;->case:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$return$do$do;-><init>(Lcom/google/common/collect/Maps$return$do;Ljava/util/Iterator;)V

    return-object v0
.end method
