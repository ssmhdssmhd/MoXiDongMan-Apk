.class final Lcom/google/common/collect/MapMakerInternalMap$import$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$import<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$native<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/collect/MapMakerInternalMap$import$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$import$do<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$import$do;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$import$do;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$import$do;->do:Lcom/google/common/collect/MapMakerInternalMap$import$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if()Lcom/google/common/collect/MapMakerInternalMap$import$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$import$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$import$do;->do:Lcom/google/common/collect/MapMakerInternalMap$import$do;

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
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$native;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$import;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$import;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$import$do;->do(Lcom/google/common/collect/MapMakerInternalMap$native;Lcom/google/common/collect/MapMakerInternalMap$import;Lcom/google/common/collect/MapMakerInternalMap$import;)Lcom/google/common/collect/MapMakerInternalMap$import;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/google/common/collect/MapMakerInternalMap$native;Lcom/google/common/collect/MapMakerInternalMap$import;Lcom/google/common/collect/MapMakerInternalMap$import;)Lcom/google/common/collect/MapMakerInternalMap$import;
    .locals 0
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$import;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$native<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$import<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$import<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$import<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$import;->do(Lcom/google/common/collect/MapMakerInternalMap$import;)Lcom/google/common/collect/MapMakerInternalMap$import;

    move-result-object p1

    return-object p1
.end method

.method public for(Lcom/google/common/collect/MapMakerInternalMap$native;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$import;)Lcom/google/common/collect/MapMakerInternalMap$import;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$import;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$native<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$import<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$import<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$import;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$import;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$import;)V

    return-object p1
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method

.method public new(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$native;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$import<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$native<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$native<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$native;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$native;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$const;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$native;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$import;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$import$do;->for(Lcom/google/common/collect/MapMakerInternalMap$native;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$import;)Lcom/google/common/collect/MapMakerInternalMap$import;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$const;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$import$do;->new(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$native;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$const;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$native;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$import;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$import$do;->try(Lcom/google/common/collect/MapMakerInternalMap$native;Lcom/google/common/collect/MapMakerInternalMap$import;Ljava/lang/Object;)V

    return-void
.end method

.method public try(Lcom/google/common/collect/MapMakerInternalMap$native;Lcom/google/common/collect/MapMakerInternalMap$import;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$native<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$import<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$import;->if(Ljava/lang/Object;)V

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method
