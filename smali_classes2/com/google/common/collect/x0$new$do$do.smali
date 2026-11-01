.class Lcom/google/common/collect/x0$new$do$do;
.super Lcom/google/common/collect/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/x0$new$do;->do()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/else<",
        "TK;",
        "Lcom/google/common/collect/g1<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Map$Entry;

.field public final synthetic if:Lcom/google/common/collect/x0$new$do;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0$new$do;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x0$new$do$do;->if:Lcom/google/common/collect/x0$new$do;

    iput-object p2, p0, Lcom/google/common/collect/x0$new$do$do;->do:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/else;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new$do$do;->do:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/g1;->of(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new$do$do;->do:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/x0$new$do$do;->do()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method
