.class abstract Lcom/google/common/reflect/break$this;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "this"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/break$this$try;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final do:Lcom/google/common/reflect/break$this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/break$this<",
            "Lcom/google/common/reflect/break<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final if:Lcom/google/common/reflect/break$this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/break$this<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$this$do;

    invoke-direct {v0}, Lcom/google/common/reflect/break$this$do;-><init>()V

    sput-object v0, Lcom/google/common/reflect/break$this;->do:Lcom/google/common/reflect/break$this;

    .line 2
    new-instance v0, Lcom/google/common/reflect/break$this$if;

    invoke-direct {v0}, Lcom/google/common/reflect/break$this$if;-><init>()V

    sput-object v0, Lcom/google/common/reflect/break$this;->if:Lcom/google/common/reflect/break$this;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/reflect/break$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/reflect/break$this;-><init>()V

    return-void
.end method

.method private static goto(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/v0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$this$new;

    invoke-direct {v0, p1, p0}, Lcom/google/common/reflect/break$this$new;-><init>(Ljava/util/Comparator;Ljava/util/Map;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/k2;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p0

    return-object p0
.end method

.method private if(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break$this;->case(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break$this;->try(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-direct {p0, v2, p2}, Lcom/google/common/reflect/break$this;->if(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break$this;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0, v1, p2}, Lcom/google/common/reflect/break$this;->if(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method


# virtual methods
.method public abstract case(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public final do()Lcom/google/common/reflect/break$this;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break$this<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$this$for;

    invoke-direct {v0, p0, p0}, Lcom/google/common/reflect/break$this$for;-><init>(Lcom/google/common/reflect/break$this;Lcom/google/common/reflect/break$this;)V

    return-object v0
.end method

.method public abstract else(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation
.end method

.method public for(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/v0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/Maps;->l()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/google/common/reflect/break$this;->if(Ljava/lang/Object;Ljava/util/Map;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/k2;->reverse()Lcom/google/common/collect/k2;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/reflect/break$this;->goto(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method public final new(Ljava/lang/Object;)Lcom/google/common/collect/v0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/v0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/v0;->of(Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break$this;->for(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method public abstract try(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation
.end method
