.class public final Lcom/google/common/collect/q0$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/collect/x0$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x0$if<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/x0;->builder()Lcom/google/common/collect/x0$if;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/q0$if;->do:Lcom/google/common/collect/x0$if;

    return-void
.end method

.method private static if(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TB;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/hf1;->case(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public do()Lcom/google/common/collect/q0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q0<",
            "TB;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q0$if;->do:Lcom/google/common/collect/x0$if;

    invoke-virtual {v0}, Lcom/google/common/collect/x0$if;->do()Lcom/google/common/collect/x0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/x0;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/q0;->of()Lcom/google/common/collect/q0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/common/collect/q0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/q0;-><init>(Lcom/google/common/collect/x0;Lcom/google/common/collect/q0$do;)V

    return-object v1
.end method

.method public for(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/q0$if;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/google/common/collect/q0$if<",
            "TB;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q0$if;->do:Lcom/google/common/collect/x0$if;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    return-object p0
.end method

.method public new(Ljava/util/Map;)Lcom/google/common/collect/q0$if;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Class<",
            "+TT;>;+TT;>;)",
            "Lcom/google/common/collect/q0$if<",
            "TB;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/q0$if;->do:Lcom/google/common/collect/x0$if;

    invoke-static {v1, v0}, Lcom/google/common/collect/q0$if;->if(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    goto :goto_0

    :cond_0
    return-object p0
.end method
