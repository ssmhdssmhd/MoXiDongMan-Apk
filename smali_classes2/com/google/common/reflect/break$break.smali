.class abstract enum Lcom/google/common/reflect/break$break;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "break"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/break$break;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/google/common/reflect/break<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final enum IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/break$break;

.field public static final enum INTERFACE_ONLY:Lcom/google/common/reflect/break$break;

.field private static final synthetic do:[Lcom/google/common/reflect/break$break;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$break$do;

    const-string v1, "IGNORE_TYPE_VARIABLE_OR_WILDCARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/break$break$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/break$break;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/break$break;

    .line 2
    new-instance v1, Lcom/google/common/reflect/break$break$if;

    const-string v3, "INTERFACE_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/reflect/break$break$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/reflect/break$break;->INTERFACE_ONLY:Lcom/google/common/reflect/break$break;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/reflect/break$break;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/reflect/break$break;->do:[Lcom/google/common/reflect/break$break;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/break$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/break$break;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/break$break;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/reflect/break$break;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/break$break;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/break$break;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/break$break;->do:[Lcom/google/common/reflect/break$break;

    invoke-virtual {v0}, [Lcom/google/common/reflect/break$break;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/break$break;

    return-object v0
.end method
