.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringNode"
.end annotation


# instance fields
.field private final string:Ljava/lang/String;

.field private useSingleQuote:Z


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->useSingleQuote:Z

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-ne v2, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v4, 0x22

    if-ne v2, v4, :cond_1

    if-ne v3, v4, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 9
    iput-boolean v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->useSingleQuote:Z

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->string:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;ZLcom/jayway/jsonpath/internal/filter/ValueNode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;-><init>(Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public asNumberNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->string:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;-><init>(Ljava/math/BigDecimal;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V

    return-object v1

    .line 3
    :catch_0
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->NAN:Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    return-object v0
.end method

.method public asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;
    .locals 0

    return-object p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->string:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->getString()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->string:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isStringNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->useSingleQuote:Z

    if-eqz v0, :cond_0

    const-string v0, "\'"

    goto :goto_0

    :cond_0
    const-string v0, "\""

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->string:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/jayway/jsonpath/internal/Utils;->escape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    const-class p1, Ljava/lang/String;

    return-object p1
.end method
