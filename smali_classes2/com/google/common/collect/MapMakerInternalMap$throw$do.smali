.class final Lcom/google/common/collect/MapMakerInternalMap$throw$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;",
        "Lcom/google/common/collect/y1$do;",
        "Lcom/google/common/collect/MapMakerInternalMap$throw<",
        "TK;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$while<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/collect/MapMakerInternalMap$throw$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$throw$do<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$throw$do;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$throw$do;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$throw$do;->do:Lcom/google/common/collect/MapMakerInternalMap$throw$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if()Lcom/google/common/collect/MapMakerInternalMap$throw$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$throw$do<",
            "TK;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$throw$do;->do:Lcom/google/common/collect/MapMakerInternalMap$throw$do;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/google/common/collect/MapMakerInternalMap$const;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$while;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$throw;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$throw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$throw$do;->do(Lcom/google/common/collect/MapMakerInternalMap$while;Lcom/google/common/collect/MapMakerInternalMap$throw;Lcom/google/common/collect/MapMakerInternalMap$throw;)Lcom/google/common/collect/MapMakerInternalMap$throw;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/google/common/collect/MapMakerInternalMap$while;Lcom/google/common/collect/MapMakerInternalMap$throw;Lcom/google/common/collect/MapMakerInternalMap$throw;)Lcom/google/common/collect/MapMakerInternalMap$throw;
    .locals 0
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$throw;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$while<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$throw;->do(Lcom/google/common/collect/MapMakerInternalMap$throw;)Lcom/google/common/collect/MapMakerInternalMap$throw;

    move-result-object p1

    return-object p1
.end method

.method public for(Lcom/google/common/collect/MapMakerInternalMap$while;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throw;)Lcom/google/common/collect/MapMakerInternalMap$throw;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$throw;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$while<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$throw;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$throw;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throw;)V

    return-object p1
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method

.method public new(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$while;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lcom/google/common/collect/y1$do;",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$while<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$while<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$while;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$while;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$const;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$while;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$throw;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$throw$do;->for(Lcom/google/common/collect/MapMakerInternalMap$while;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throw;)Lcom/google/common/collect/MapMakerInternalMap$throw;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$const;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$throw$do;->new(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$while;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$const;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$while;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$throw;

    check-cast p3, Lcom/google/common/collect/y1$do;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$throw$do;->try(Lcom/google/common/collect/MapMakerInternalMap$while;Lcom/google/common/collect/MapMakerInternalMap$throw;Lcom/google/common/collect/y1$do;)V

    return-void
.end method

.method public try(Lcom/google/common/collect/MapMakerInternalMap$while;Lcom/google/common/collect/MapMakerInternalMap$throw;Lcom/google/common/collect/y1$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$while<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;",
            "Lcom/google/common/collect/y1$do;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method
