.class final Lcom/google/common/eventbus/try$if;
.super Lcom/google/common/cache/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/for<",
        "Ljava/lang/Class<",
        "*>;",
        "Lcom/google/common/collect/g1<",
        "Ljava/lang/Class<",
        "*>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/for;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Class;)Lcom/google/common/collect/g1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/break;->getTypes()Lcom/google/common/reflect/break$catch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/break$catch;->rawTypes()Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/g1;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/eventbus/try$if;->do(Ljava/lang/Class;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method
