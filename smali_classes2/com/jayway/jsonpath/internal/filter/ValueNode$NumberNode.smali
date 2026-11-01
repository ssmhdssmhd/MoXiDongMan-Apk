.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberNode"
.end annotation


# static fields
.field public static NAN:Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;


# instance fields
.field private final number:Ljava/math/BigDecimal;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->NAN:Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 6
    new-instance v0, Ljava/math/BigDecimal;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->number:Ljava/math/BigDecimal;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->number:Ljava/math/BigDecimal;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/math/BigDecimal;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;-><init>(Ljava/math/BigDecimal;)V

    return-void
.end method


# virtual methods
.method public asNumberNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;
    .locals 0

    return-object p0
.end method

.method public asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;
    .locals 4

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->number:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;-><init>(Ljava/lang/CharSequence;ZLcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asNumberNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->NAN:Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    if-ne p1, v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->number:Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->number:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNumber()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->number:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public isNumberNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->number:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

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
    const-class p1, Ljava/lang/Number;

    return-object p1
.end method
