.class public final enum Lcom/jayway/jsonpath/internal/filter/RelationalOperator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jayway/jsonpath/internal/filter/RelationalOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum ALL:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum CONTAINS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum EMPTY:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum EQ:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum EXISTS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum GT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum GTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum IN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum LT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum LTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum MATCHES:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum NE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum NIN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum REGEX:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum SIZE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum SUBSETOF:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum TSEQ:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum TSNE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field public static final enum TYPE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;


# instance fields
.field private final operatorString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v1, "GTE"

    const/4 v2, 0x0

    const-string v3, ">="

    invoke-direct {v0, v1, v2, v3}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->GTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v3, "LTE"

    const/4 v4, 0x1

    const-string v5, "<="

    invoke-direct {v1, v3, v4, v5}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->LTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 3
    new-instance v3, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v5, "EQ"

    const/4 v6, 0x2

    const-string v7, "=="

    invoke-direct {v3, v5, v6, v7}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EQ:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 4
    new-instance v5, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v7, "TSEQ"

    const/4 v8, 0x3

    const-string v9, "==="

    invoke-direct {v5, v7, v8, v9}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->TSEQ:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 5
    new-instance v7, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v9, "NE"

    const/4 v10, 0x4

    const-string v11, "!="

    invoke-direct {v7, v9, v10, v11}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->NE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 6
    new-instance v9, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v11, "TSNE"

    const/4 v12, 0x5

    const-string v13, "!=="

    invoke-direct {v9, v11, v12, v13}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->TSNE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 7
    new-instance v11, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v13, "LT"

    const/4 v14, 0x6

    const-string v15, "<"

    invoke-direct {v11, v13, v14, v15}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->LT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 8
    new-instance v13, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v15, "GT"

    const/4 v14, 0x7

    const-string v12, ">"

    invoke-direct {v13, v15, v14, v12}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->GT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 9
    new-instance v12, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v15, "REGEX"

    const/16 v14, 0x8

    const-string v10, "=~"

    invoke-direct {v12, v15, v14, v10}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->REGEX:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 10
    new-instance v10, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v15, "NIN"

    const/16 v14, 0x9

    invoke-direct {v10, v15, v14, v15}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->NIN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 11
    new-instance v15, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v14, "IN"

    const/16 v8, 0xa

    invoke-direct {v15, v14, v8, v14}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->IN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 12
    new-instance v14, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v8, "CONTAINS"

    const/16 v6, 0xb

    invoke-direct {v14, v8, v6, v8}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->CONTAINS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 13
    new-instance v8, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v6, "ALL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v6}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->ALL:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 14
    new-instance v6, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v4, "SIZE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v4}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->SIZE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 15
    new-instance v4, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v2, "EXISTS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v2}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EXISTS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 16
    new-instance v2, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v6, "TYPE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v6}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->TYPE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 17
    new-instance v4, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v6, "MATCHES"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    move-object/from16 v19, v8

    const-string v8, "MATCHES"

    invoke-direct {v4, v6, v2, v8}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->MATCHES:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 18
    new-instance v2, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v6, "EMPTY"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "EMPTY"

    invoke-direct {v2, v6, v8, v4}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EMPTY:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 19
    new-instance v4, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const-string v6, "SUBSETOF"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const-string v2, "SUBSETOF"

    invoke-direct {v4, v6, v8, v2}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->SUBSETOF:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const/16 v2, 0x13

    new-array v2, v2, [Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v15, v2, v0

    const/16 v0, 0xb

    aput-object v14, v2, v0

    const/16 v0, 0xc

    aput-object v19, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v4, v2, v0

    .line 20
    sput-object v2, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->$VALUES:[Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

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
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->operatorString:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/filter/RelationalOperator;
    .locals 6

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->values()[Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->operatorString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter operator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/filter/RelationalOperator;
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    return-object p0
.end method

.method public static values()[Lcom/jayway/jsonpath/internal/filter/RelationalOperator;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->$VALUES:[Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    invoke-virtual {v0}, [Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->operatorString:Ljava/lang/String;

    return-object v0
.end method
