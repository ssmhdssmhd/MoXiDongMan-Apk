.class abstract enum Lcom/google/common/collect/Maps$import;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "import"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/Maps$import;",
        ">;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KEY:Lcom/google/common/collect/Maps$import;

.field public static final enum VALUE:Lcom/google/common/collect/Maps$import;

.field private static final synthetic do:[Lcom/google/common/collect/Maps$import;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/collect/Maps$import$do;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Maps$import$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Maps$import;->KEY:Lcom/google/common/collect/Maps$import;

    .line 2
    new-instance v1, Lcom/google/common/collect/Maps$import$if;

    const-string v3, "VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/collect/Maps$import$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/Maps$import;->VALUE:Lcom/google/common/collect/Maps$import;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/collect/Maps$import;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/collect/Maps$import;->do:[Lcom/google/common/collect/Maps$import;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/Maps$try;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$import;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Maps$import;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/Maps$import;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Maps$import;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/Maps$import;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Maps$import;->do:[Lcom/google/common/collect/Maps$import;

    invoke-virtual {v0}, [Lcom/google/common/collect/Maps$import;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Maps$import;

    return-object v0
.end method
