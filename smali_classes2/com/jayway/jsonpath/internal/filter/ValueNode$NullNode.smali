.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullNode"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;-><init>()V

    return-void
.end method


# virtual methods
.method public asNullNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of p1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public isNullNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public type(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/jsonpath/Predicate$PredicateContext;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class p1, Ljava/lang/Void;

    return-object p1
.end method
