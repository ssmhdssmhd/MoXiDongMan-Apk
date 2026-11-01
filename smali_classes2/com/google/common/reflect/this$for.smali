.class Lcom/google/common/reflect/this$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private final do:Lcom/google/common/collect/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x0<",
            "Lcom/google/common/reflect/this$new;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/x0;->of()Lcom/google/common/collect/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/this$for;->do:Lcom/google/common/collect/x0;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/x0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x0<",
            "Lcom/google/common/reflect/this$new;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/reflect/this$for;->do:Lcom/google/common/collect/x0;

    return-void
.end method


# virtual methods
.method public final do(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/this$for$do;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/reflect/this$for$do;-><init>(Lcom/google/common/reflect/this$for;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/this$for;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/this$for;->if(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/this$for;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public final for(Ljava/util/Map;)Lcom/google/common/reflect/this$for;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/this$new;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/this$for;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/x0;->builder()Lcom/google/common/collect/x0$if;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/reflect/this$for;->do:Lcom/google/common/collect/x0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/x0$if;->else(Ljava/util/Map;)Lcom/google/common/collect/x0$if;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/this$new;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/common/reflect/this$new;->do(Ljava/lang/reflect/Type;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Type variable %s bound to itself"

    invoke-static {v3, v4, v2}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/google/common/reflect/this$for;

    invoke-virtual {v0}, Lcom/google/common/collect/x0$if;->do()Lcom/google/common/collect/x0;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/common/reflect/this$for;-><init>(Lcom/google/common/collect/x0;)V

    return-object p1
.end method

.method public if(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/this$for;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/google/common/reflect/this$for;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/this$for;->do:Lcom/google/common/collect/x0;

    new-instance v1, Lcom/google/common/reflect/this$new;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/this$new;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    array-length v2, v0

    if-nez v2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v2, Lcom/google/common/reflect/this;

    invoke-direct {v2, p2, v1}, Lcom/google/common/reflect/this;-><init>(Lcom/google/common/reflect/this$for;Lcom/google/common/reflect/this$do;)V

    invoke-static {v2, v0}, Lcom/google/common/reflect/this;->for(Lcom/google/common/reflect/this;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 5
    sget-boolean v1, Lcom/google/common/reflect/class$case;->do:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/common/reflect/class;->class(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Lcom/google/common/reflect/this;

    invoke-direct {p1, p2, v1}, Lcom/google/common/reflect/this;-><init>(Lcom/google/common/reflect/this$for;Lcom/google/common/reflect/this$do;)V

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method
