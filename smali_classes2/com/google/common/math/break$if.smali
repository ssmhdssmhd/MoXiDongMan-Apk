.class public final Lcom/google/common/math/break$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Quantile scale must be positive"

    .line 3
    invoke-static {v0, v1}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 4
    iput p1, p0, Lcom/google/common/math/break$if;->do:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/common/math/break$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/math/break$if;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do(I)Lcom/google/common/math/break$for;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/math/break$for;

    iget v1, p0, Lcom/google/common/math/break$if;->do:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/break$for;-><init>(IILcom/google/common/math/break$do;)V

    return-object v0
.end method

.method public varargs for([I)Lcom/google/common/math/break$new;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/math/break$new;

    iget v1, p0, Lcom/google/common/math/break$if;->do:I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/break$new;-><init>(I[ILcom/google/common/math/break$do;)V

    return-object v0
.end method

.method public if(Ljava/util/Collection;)Lcom/google/common/math/break$new;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/math/break$new;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/math/break$new;

    iget v1, p0, Lcom/google/common/math/break$if;->do:I

    invoke-static {p1}, Lcom/google/common/primitives/this;->package(Ljava/util/Collection;)[I

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/break$new;-><init>(I[ILcom/google/common/math/break$do;)V

    return-object v0
.end method
