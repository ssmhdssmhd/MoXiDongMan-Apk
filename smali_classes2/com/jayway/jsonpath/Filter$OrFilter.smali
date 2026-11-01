.class final Lcom/jayway/jsonpath/Filter$OrFilter;
.super Lcom/jayway/jsonpath/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrFilter"
.end annotation


# instance fields
.field private final left:Lcom/jayway/jsonpath/Predicate;

.field private final right:Lcom/jayway/jsonpath/Predicate;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/Filter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->left:Lcom/jayway/jsonpath/Predicate;

    .line 4
    iput-object p2, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->right:Lcom/jayway/jsonpath/Predicate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Filter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/Filter$OrFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;)V

    return-void
.end method


# virtual methods
.method public and(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/Filter;
    .locals 5

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Filter$OrFilter;

    iget-object v1, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->left:Lcom/jayway/jsonpath/Predicate;

    new-instance v2, Lcom/jayway/jsonpath/Filter$AndFilter;

    iget-object v3, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->right:Lcom/jayway/jsonpath/Predicate;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/jayway/jsonpath/Filter$AndFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Filter$1;)V

    invoke-direct {v0, v1, v2}, Lcom/jayway/jsonpath/Filter$OrFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;)V

    return-object v0
.end method

.method public apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->left:Lcom/jayway/jsonpath/Predicate;

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->right:Lcom/jayway/jsonpath/Predicate;

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[?("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->left:Lcom/jayway/jsonpath/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/jayway/jsonpath/Filter$OrFilter;->right:Lcom/jayway/jsonpath/Predicate;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
