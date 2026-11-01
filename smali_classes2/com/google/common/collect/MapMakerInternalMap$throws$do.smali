.class final Lcom/google/common/collect/MapMakerInternalMap$throws$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$throws;
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
        "Lcom/google/common/collect/MapMakerInternalMap$throws<",
        "TK;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$default<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/collect/MapMakerInternalMap$throws$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$throws$do<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$throws$do;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$throws$do;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$throws$do;->do:Lcom/google/common/collect/MapMakerInternalMap$throws$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if()Lcom/google/common/collect/MapMakerInternalMap$throws$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$throws$do<",
            "TK;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$throws$do;->do:Lcom/google/common/collect/MapMakerInternalMap$throws$do;

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
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$default;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$throws;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$throws;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$throws$do;->do(Lcom/google/common/collect/MapMakerInternalMap$default;Lcom/google/common/collect/MapMakerInternalMap$throws;Lcom/google/common/collect/MapMakerInternalMap$throws;)Lcom/google/common/collect/MapMakerInternalMap$throws;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/google/common/collect/MapMakerInternalMap$default;Lcom/google/common/collect/MapMakerInternalMap$throws;Lcom/google/common/collect/MapMakerInternalMap$throws;)Lcom/google/common/collect/MapMakerInternalMap$throws;
    .locals 1
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$throws;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$default<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$new;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$default;->access$200(Lcom/google/common/collect/MapMakerInternalMap$default;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$throws;->do(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$throws;)Lcom/google/common/collect/MapMakerInternalMap$throws;

    move-result-object p1

    return-object p1
.end method

.method public for(Lcom/google/common/collect/MapMakerInternalMap$default;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throws;)Lcom/google/common/collect/MapMakerInternalMap$throws;
    .locals 1
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$throws;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$default<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$throws;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$default;->access$200(Lcom/google/common/collect/MapMakerInternalMap$default;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$throws;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throws;)V

    return-object v0
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method

.method public new(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$default;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lcom/google/common/collect/y1$do;",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$default<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$default<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$default;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$default;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$const;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$default;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$throws;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$throws$do;->for(Lcom/google/common/collect/MapMakerInternalMap$default;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throws;)Lcom/google/common/collect/MapMakerInternalMap$throws;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$const;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$throws$do;->new(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$default;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$const;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$default;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$throws;

    check-cast p3, Lcom/google/common/collect/y1$do;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$throws$do;->try(Lcom/google/common/collect/MapMakerInternalMap$default;Lcom/google/common/collect/MapMakerInternalMap$throws;Lcom/google/common/collect/y1$do;)V

    return-void
.end method

.method public try(Lcom/google/common/collect/MapMakerInternalMap$default;Lcom/google/common/collect/MapMakerInternalMap$throws;Lcom/google/common/collect/y1$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$default<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
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
