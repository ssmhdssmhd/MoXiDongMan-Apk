.class Lcom/google/common/collect/a1$do;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a1;->iterator()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ac2<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/ac2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ac2<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic if:Lcom/google/common/collect/a1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a1$do;->if:Lcom/google/common/collect/a1;

    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/a1;->access$000(Lcom/google/common/collect/a1;)Lcom/google/common/collect/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/x0;->entrySet()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/a1$do;->do:Landroid/support/v4/ac2;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a1$do;->do:Landroid/support/v4/ac2;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a1$do;->do:Landroid/support/v4/ac2;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
