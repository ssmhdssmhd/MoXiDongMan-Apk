.class abstract enum Lcom/google/common/io/super$case;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/super$case;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IS_DIRECTORY:Lcom/google/common/io/super$case;

.field public static final enum IS_FILE:Lcom/google/common/io/super$case;

.field private static final synthetic do:[Lcom/google/common/io/super$case;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/io/super$case$do;

    const-string v1, "IS_DIRECTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/super$case$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/super$case;->IS_DIRECTORY:Lcom/google/common/io/super$case;

    .line 2
    new-instance v1, Lcom/google/common/io/super$case$if;

    const-string v3, "IS_FILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/io/super$case$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/io/super$case;->IS_FILE:Lcom/google/common/io/super$case;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/io/super$case;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/io/super$case;->do:[Lcom/google/common/io/super$case;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/io/super$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/super$case;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/super$case;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/io/super$case;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/super$case;

    return-object p0
.end method

.method public static values()[Lcom/google/common/io/super$case;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/super$case;->do:[Lcom/google/common/io/super$case;

    invoke-virtual {v0}, [Lcom/google/common/io/super$case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/io/super$case;

    return-object v0
.end method
