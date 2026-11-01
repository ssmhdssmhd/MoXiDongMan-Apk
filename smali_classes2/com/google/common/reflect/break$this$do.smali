.class final Lcom/google/common/reflect/break$this$do;
.super Lcom/google/common/reflect/break$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/break$this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/break$this<",
        "Lcom/google/common/reflect/break<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/reflect/break$this;-><init>(Lcom/google/common/reflect/break$do;)V

    return-void
.end method


# virtual methods
.method public break(Lcom/google/common/reflect/break;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/break<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic case(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/reflect/break;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break$this$do;->break(Lcom/google/common/reflect/break;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public catch(Lcom/google/common/reflect/break;)Lcom/google/common/reflect/break;
    .locals 0
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/break<",
            "*>;)",
            "Lcom/google/common/reflect/break<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/reflect/break;->getGenericSuperclass()Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/common/reflect/break;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break$this$do;->catch(Lcom/google/common/reflect/break;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1
.end method

.method public this(Lcom/google/common/reflect/break;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/break<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/reflect/break<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/reflect/break;->getGenericInterfaces()Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic try(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/reflect/break;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break$this$do;->this(Lcom/google/common/reflect/break;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
