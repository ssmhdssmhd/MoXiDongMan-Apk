.class public final enum Lcom/jayway/jsonpath/Option;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jayway/jsonpath/Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jayway/jsonpath/Option;

.field public static final enum ALWAYS_RETURN_LIST:Lcom/jayway/jsonpath/Option;

.field public static final enum AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

.field public static final enum DEFAULT_PATH_LEAF_TO_NULL:Lcom/jayway/jsonpath/Option;

.field public static final enum REQUIRE_PROPERTIES:Lcom/jayway/jsonpath/Option;

.field public static final enum SUPPRESS_EXCEPTIONS:Lcom/jayway/jsonpath/Option;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Option;

    const-string v1, "DEFAULT_PATH_LEAF_TO_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jayway/jsonpath/Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jayway/jsonpath/Option;->DEFAULT_PATH_LEAF_TO_NULL:Lcom/jayway/jsonpath/Option;

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/Option;

    const-string v3, "ALWAYS_RETURN_LIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jayway/jsonpath/Option;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jayway/jsonpath/Option;->ALWAYS_RETURN_LIST:Lcom/jayway/jsonpath/Option;

    .line 3
    new-instance v3, Lcom/jayway/jsonpath/Option;

    const-string v5, "AS_PATH_LIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/jayway/jsonpath/Option;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    .line 4
    new-instance v5, Lcom/jayway/jsonpath/Option;

    const-string v7, "SUPPRESS_EXCEPTIONS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/jayway/jsonpath/Option;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/jayway/jsonpath/Option;->SUPPRESS_EXCEPTIONS:Lcom/jayway/jsonpath/Option;

    .line 5
    new-instance v7, Lcom/jayway/jsonpath/Option;

    const-string v9, "REQUIRE_PROPERTIES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/jayway/jsonpath/Option;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/jayway/jsonpath/Option;->REQUIRE_PROPERTIES:Lcom/jayway/jsonpath/Option;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/jayway/jsonpath/Option;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/jayway/jsonpath/Option;->$VALUES:[Lcom/jayway/jsonpath/Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jayway/jsonpath/Option;
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jayway/jsonpath/Option;

    return-object p0
.end method

.method public static values()[Lcom/jayway/jsonpath/Option;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/Option;->$VALUES:[Lcom/jayway/jsonpath/Option;

    invoke-virtual {v0}, [Lcom/jayway/jsonpath/Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jayway/jsonpath/Option;

    return-object v0
.end method
