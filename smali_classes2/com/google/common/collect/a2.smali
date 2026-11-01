.class public abstract Lcom/google/common/collect/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/a2$const;,
        Lcom/google/common/collect/a2$class;,
        Lcom/google/common/collect/a2$break;,
        Lcom/google/common/collect/a2$catch;,
        Lcom/google/common/collect/a2$case;,
        Lcom/google/common/collect/a2$final;,
        Lcom/google/common/collect/a2$goto;,
        Lcom/google/common/collect/a2$else;,
        Lcom/google/common/collect/a2$this;,
        Lcom/google/common/collect/a2$try;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final do:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/a2$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/a2;-><init>()V

    return-void
.end method

.method public static case()Lcom/google/common/collect/a2$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$catch<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/a2;->else(I)Lcom/google/common/collect/a2$catch;

    move-result-object v0

    return-object v0
.end method

.method public static else(I)Lcom/google/common/collect/a2$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/a2$catch<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$if;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a2$if;-><init>(I)V

    return-object v0
.end method

.method public static for(Ljava/lang/Class;)Lcom/google/common/collect/a2$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Enum<",
            "TK0;>;>(",
            "Ljava/lang/Class<",
            "TK0;>;)",
            "Lcom/google/common/collect/a2$catch<",
            "TK0;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$new;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a2$new;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goto()Lcom/google/common/collect/a2$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$catch<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/a2;->this(Ljava/util/Comparator;)Lcom/google/common/collect/a2$catch;

    move-result-object v0

    return-object v0
.end method

.method public static new()Lcom/google/common/collect/a2$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$catch<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/a2;->try(I)Lcom/google/common/collect/a2$catch;

    move-result-object v0

    return-object v0
.end method

.method public static this(Ljava/util/Comparator;)Lcom/google/common/collect/a2$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/google/common/collect/a2$catch<",
            "TK0;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$for;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a2$for;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static try(I)Lcom/google/common/collect/a2$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/a2$catch<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a2$do;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract do()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public if(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2;->do()Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    return-object v0
.end method
