.class final enum Lfreemarker/ext/dom/do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfreemarker/ext/dom/do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTRIBUTES:Lfreemarker/ext/dom/do;

.field public static final enum ATTRIBUTES_MARKUP:Lfreemarker/ext/dom/do;

.field public static final enum END_TAG:Lfreemarker/ext/dom/do;

.field public static final enum LOCAL_NAME:Lfreemarker/ext/dom/do;

.field public static final enum MARKUP:Lfreemarker/ext/dom/do;

.field public static final enum NAMESPACE:Lfreemarker/ext/dom/do;

.field public static final enum NESTED_MARKUP:Lfreemarker/ext/dom/do;

.field public static final enum NEXT_SIBLING_ELEMENT:Lfreemarker/ext/dom/do;

.field public static final enum PREVIOUS_SIBLING_ELEMENT:Lfreemarker/ext/dom/do;

.field public static final enum QNAME:Lfreemarker/ext/dom/do;

.field public static final enum START_TAG:Lfreemarker/ext/dom/do;

.field public static final enum TEXT:Lfreemarker/ext/dom/do;

.field private static final synthetic do:[Lfreemarker/ext/dom/do;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lfreemarker/ext/dom/do;

    const-string v1, "MARKUP"

    const/4 v2, 0x0

    const-string v3, "@@markup"

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfreemarker/ext/dom/do;->MARKUP:Lfreemarker/ext/dom/do;

    .line 2
    new-instance v1, Lfreemarker/ext/dom/do;

    const-string v3, "NESTED_MARKUP"

    const/4 v4, 0x1

    const-string v5, "@@nested_markup"

    invoke-direct {v1, v3, v4, v5}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lfreemarker/ext/dom/do;->NESTED_MARKUP:Lfreemarker/ext/dom/do;

    .line 3
    new-instance v3, Lfreemarker/ext/dom/do;

    const-string v5, "ATTRIBUTES_MARKUP"

    const/4 v6, 0x2

    const-string v7, "@@attributes_markup"

    invoke-direct {v3, v5, v6, v7}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lfreemarker/ext/dom/do;->ATTRIBUTES_MARKUP:Lfreemarker/ext/dom/do;

    .line 4
    new-instance v5, Lfreemarker/ext/dom/do;

    const-string v7, "TEXT"

    const/4 v8, 0x3

    const-string v9, "@@text"

    invoke-direct {v5, v7, v8, v9}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lfreemarker/ext/dom/do;->TEXT:Lfreemarker/ext/dom/do;

    .line 5
    new-instance v7, Lfreemarker/ext/dom/do;

    const-string v9, "START_TAG"

    const/4 v10, 0x4

    const-string v11, "@@start_tag"

    invoke-direct {v7, v9, v10, v11}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lfreemarker/ext/dom/do;->START_TAG:Lfreemarker/ext/dom/do;

    .line 6
    new-instance v9, Lfreemarker/ext/dom/do;

    const-string v11, "END_TAG"

    const/4 v12, 0x5

    const-string v13, "@@end_tag"

    invoke-direct {v9, v11, v12, v13}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lfreemarker/ext/dom/do;->END_TAG:Lfreemarker/ext/dom/do;

    .line 7
    new-instance v11, Lfreemarker/ext/dom/do;

    const-string v13, "QNAME"

    const/4 v14, 0x6

    const-string v15, "@@qname"

    invoke-direct {v11, v13, v14, v15}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lfreemarker/ext/dom/do;->QNAME:Lfreemarker/ext/dom/do;

    .line 8
    new-instance v13, Lfreemarker/ext/dom/do;

    const-string v15, "NAMESPACE"

    const/4 v14, 0x7

    const-string v12, "@@namespace"

    invoke-direct {v13, v15, v14, v12}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lfreemarker/ext/dom/do;->NAMESPACE:Lfreemarker/ext/dom/do;

    .line 9
    new-instance v12, Lfreemarker/ext/dom/do;

    const-string v15, "LOCAL_NAME"

    const/16 v14, 0x8

    const-string v10, "@@local_name"

    invoke-direct {v12, v15, v14, v10}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lfreemarker/ext/dom/do;->LOCAL_NAME:Lfreemarker/ext/dom/do;

    .line 10
    new-instance v10, Lfreemarker/ext/dom/do;

    const-string v15, "ATTRIBUTES"

    const/16 v14, 0x9

    const-string v8, "@@"

    invoke-direct {v10, v15, v14, v8}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lfreemarker/ext/dom/do;->ATTRIBUTES:Lfreemarker/ext/dom/do;

    .line 11
    new-instance v8, Lfreemarker/ext/dom/do;

    const-string v15, "PREVIOUS_SIBLING_ELEMENT"

    const/16 v14, 0xa

    const-string v6, "@@previous_sibling_element"

    invoke-direct {v8, v15, v14, v6}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lfreemarker/ext/dom/do;->PREVIOUS_SIBLING_ELEMENT:Lfreemarker/ext/dom/do;

    .line 12
    new-instance v6, Lfreemarker/ext/dom/do;

    const-string v15, "NEXT_SIBLING_ELEMENT"

    const/16 v14, 0xb

    const-string v4, "@@next_sibling_element"

    invoke-direct {v6, v15, v14, v4}, Lfreemarker/ext/dom/do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lfreemarker/ext/dom/do;->NEXT_SIBLING_ELEMENT:Lfreemarker/ext/dom/do;

    const/16 v4, 0xc

    new-array v4, v4, [Lfreemarker/ext/dom/do;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 13
    sput-object v4, Lfreemarker/ext/dom/do;->do:[Lfreemarker/ext/dom/do;

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
    iput-object p3, p0, Lfreemarker/ext/dom/do;->key:Ljava/lang/String;

    return-void
.end method

.method public static containsKey(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lfreemarker/ext/dom/do;->values()[Lfreemarker/ext/dom/do;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lfreemarker/ext/dom/do;
    .locals 1

    .line 1
    const-class v0, Lfreemarker/ext/dom/do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/dom/do;

    return-object p0
.end method

.method public static values()[Lfreemarker/ext/dom/do;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/dom/do;->do:[Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, [Lfreemarker/ext/dom/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/ext/dom/do;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/do;->key:Ljava/lang/String;

    return-object v0
.end method
