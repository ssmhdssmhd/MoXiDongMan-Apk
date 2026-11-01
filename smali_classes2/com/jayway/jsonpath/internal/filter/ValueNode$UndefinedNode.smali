.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndefinedNode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public asUndefinedNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUndefinedNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
