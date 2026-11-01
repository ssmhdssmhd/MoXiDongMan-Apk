.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredicateNode"
.end annotation


# instance fields
.field private final predicate:Lcom/jayway/jsonpath/Predicate;


# direct methods
.method public constructor <init>(Lcom/jayway/jsonpath/Predicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;->predicate:Lcom/jayway/jsonpath/Predicate;

    return-void
.end method


# virtual methods
.method public asPredicateNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPredicate()Lcom/jayway/jsonpath/Predicate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;->predicate:Lcom/jayway/jsonpath/Predicate;

    return-object v0
.end method

.method public isPredicateNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;->predicate:Lcom/jayway/jsonpath/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
    const-class p1, Ljava/lang/Void;

    return-object p1
.end method
