.class public abstract Lcom/google/common/collect/a2$const;
.super Lcom/google/common/collect/a2$class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "const"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a2$class<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/a2$class;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic break()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2$const;->class()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic catch(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/SetMultimap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a2$const;->const(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p1

    return-object p1
.end method

.method public abstract class()Lcom/google/common/collect/SortedSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public const(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/SortedSetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/a2$class;->catch(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/SetMultimap;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/SortedSetMultimap;

    return-object p1
.end method

.method public bridge synthetic do()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2$const;->class()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic if(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a2$const;->const(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p1

    return-object p1
.end method
