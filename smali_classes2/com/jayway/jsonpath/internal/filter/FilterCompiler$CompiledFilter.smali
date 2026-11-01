.class final Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;
.super Lcom/jayway/jsonpath/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/FilterCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompiledFilter"
.end annotation


# instance fields
.field private final predicate:Lcom/jayway/jsonpath/Predicate;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/Predicate;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/Filter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;->predicate:Lcom/jayway/jsonpath/Predicate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/internal/filter/FilterCompiler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;-><init>(Lcom/jayway/jsonpath/Predicate;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;->predicate:Lcom/jayway/jsonpath/Predicate;

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/FilterCompiler$CompiledFilter;->predicate:Lcom/jayway/jsonpath/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[?("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
