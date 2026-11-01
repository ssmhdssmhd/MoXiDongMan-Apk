.class Lcom/google/common/collect/x0$for$do;
.super Lcom/google/common/collect/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/x0$for;->createEntrySet()Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/y0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/x0$for;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x0$for$do;->this$0:Lcom/google/common/collect/x0$for;

    invoke-direct {p0}, Lcom/google/common/collect/y0;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x0$for$do;->this$0:Lcom/google/common/collect/x0$for;

    invoke-virtual {v0}, Lcom/google/common/collect/x0$for;->entryIterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/x0$for$do;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public map()Lcom/google/common/collect/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$for$do;->this$0:Lcom/google/common/collect/x0$for;

    return-object v0
.end method
