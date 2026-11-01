.class Lcom/google/common/collect/case$if;
.super Lcom/google/common/collect/case$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/case;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/case<",
        "TE;>.for<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic try:Lcom/google/common/collect/case;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/case$if;->try:Lcom/google/common/collect/case;

    invoke-direct {p0, p1}, Lcom/google/common/collect/case$for;-><init>(Lcom/google/common/collect/case;)V

    return-void
.end method


# virtual methods
.method public for(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/case$if;->try:Lcom/google/common/collect/case;

    iget-object v0, v0, Lcom/google/common/collect/case;->backingMap:Lcom/google/common/collect/i2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i2;->goto(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/case$if;->for(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method
