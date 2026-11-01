.class Lcom/google/common/collect/l$do;
.super Lcom/google/common/collect/l$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l;->elementIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l<",
        "TE;>.for<TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/google/common/collect/l;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/l$do;->new:Lcom/google/common/collect/l;

    invoke-direct {p0, p1}, Lcom/google/common/collect/l$for;-><init>(Lcom/google/common/collect/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l$do;->if(I)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public if(I)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l$do;->new:Lcom/google/common/collect/l;

    invoke-static {v0}, Lcom/google/common/collect/l;->access$000(Lcom/google/common/collect/l;)[Ljava/lang/Enum;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
