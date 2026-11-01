.class Lcom/google/common/collect/Maps$while$do;
.super Lcom/google/common/collect/Maps$native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$while;->do()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$native<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/Maps$while;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$while;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Maps$while$do;->do:Lcom/google/common/collect/Maps$while;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$native;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$while$do;->do:Lcom/google/common/collect/Maps$while;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$while$do;->do:Lcom/google/common/collect/Maps$while;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$while;->if()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
