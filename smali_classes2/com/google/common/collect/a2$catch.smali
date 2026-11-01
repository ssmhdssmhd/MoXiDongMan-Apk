.class public abstract Lcom/google/common/collect/a2$catch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "catch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final do:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public break()Lcom/google/common/collect/a2$const;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$const<",
            "TK0;",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/a2$catch;->catch(Ljava/util/Comparator;)Lcom/google/common/collect/a2$const;

    move-result-object v0

    return-object v0
.end method

.method public case(I)Lcom/google/common/collect/a2$class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/a2$class<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$catch$for;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/a2$catch$for;-><init>(Lcom/google/common/collect/a2$catch;I)V

    return-object v0
.end method

.method public catch(Ljava/util/Comparator;)Lcom/google/common/collect/a2$const;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TV0;>;)",
            "Lcom/google/common/collect/a2$const<",
            "TK0;TV0;>;"
        }
    .end annotation

    const-string v0, "comparator"

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/af1;->strictfp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$catch$try;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/a2$catch$try;-><init>(Lcom/google/common/collect/a2$catch;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public do()Lcom/google/common/collect/a2$break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$break<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/common/collect/a2$catch;->if(I)Lcom/google/common/collect/a2$break;

    move-result-object v0

    return-object v0
.end method

.method public else()Lcom/google/common/collect/a2$class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$class<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/common/collect/a2$catch;->goto(I)Lcom/google/common/collect/a2$class;

    move-result-object v0

    return-object v0
.end method

.method public abstract for()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public goto(I)Lcom/google/common/collect/a2$class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/a2$class<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$catch$new;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/a2$catch$new;-><init>(Lcom/google/common/collect/a2$catch;I)V

    return-object v0
.end method

.method public if(I)Lcom/google/common/collect/a2$break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/a2$break<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$catch$do;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/a2$catch$do;-><init>(Lcom/google/common/collect/a2$catch;I)V

    return-object v0
.end method

.method public new(Ljava/lang/Class;)Lcom/google/common/collect/a2$class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Enum<",
            "TV0;>;>(",
            "Ljava/lang/Class<",
            "TV0;>;)",
            "Lcom/google/common/collect/a2$class<",
            "TK0;TV0;>;"
        }
    .end annotation

    const-string v0, "valueClass"

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/af1;->strictfp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/a2$catch$case;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/a2$catch$case;-><init>(Lcom/google/common/collect/a2$catch;Ljava/lang/Class;)V

    return-object v0
.end method

.method public this()Lcom/google/common/collect/a2$break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$break<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/a2$catch$if;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a2$catch$if;-><init>(Lcom/google/common/collect/a2$catch;)V

    return-object v0
.end method

.method public try()Lcom/google/common/collect/a2$class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a2$class<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/common/collect/a2$catch;->case(I)Lcom/google/common/collect/a2$class;

    move-result-object v0

    return-object v0
.end method
