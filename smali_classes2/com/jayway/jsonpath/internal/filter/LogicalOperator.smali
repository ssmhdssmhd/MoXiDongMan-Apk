.class public final enum Lcom/jayway/jsonpath/internal/filter/LogicalOperator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jayway/jsonpath/internal/filter/LogicalOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

.field public static final enum AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

.field public static final enum NOT:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

.field public static final enum OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;


# instance fields
.field private final operatorString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    const-string v1, "AND"

    const/4 v2, 0x0

    const-string v3, "&&"

    invoke-direct {v0, v1, v2, v3}, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    const-string v3, "NOT"

    const/4 v4, 0x1

    const-string v5, "!"

    invoke-direct {v1, v3, v4, v5}, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->NOT:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    .line 3
    new-instance v3, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    const-string v5, "OR"

    const/4 v6, 0x2

    const-string v7, "||"

    invoke-direct {v3, v5, v6, v7}, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->$VALUES:[Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->operatorString:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/filter/LogicalOperator;
    .locals 3

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    iget-object v1, v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->operatorString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->NOT:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    iget-object v1, v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->operatorString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    iget-object v1, v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->operatorString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse operator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/filter/LogicalOperator;
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    return-object p0
.end method

.method public static values()[Lcom/jayway/jsonpath/internal/filter/LogicalOperator;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->$VALUES:[Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-virtual {v0}, [Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    return-object v0
.end method


# virtual methods
.method public getOperatorString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->operatorString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->operatorString:Ljava/lang/String;

    return-object v0
.end method
